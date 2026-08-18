@IsTest
private class PromptBuilderActionTest {

    @IsTest
    static void testBuildPrompt_SimpleInput() {
        // Step 1: Prepare test data (input)
        PromptBuilderAction.PromptRequest req = new PromptBuilderAction.PromptRequest();
        req.inputText = 'Summarize the latest customer feedback.';
        List<PromptBuilderAction.PromptRequest> requestList = new List<PromptBuilderAction.PromptRequest>{ req };

        // Step 2: Call the invocable method
        List<PromptBuilderAction.PromptResponse> results = PromptBuilderAction.buildPrompt(requestList);

        // Step 3: Verify results
        System.assertNotEquals(null, results, 'Response list should not be null');
        System.assertEquals(1, results.size(), 'Should return exactly one response');

        String expected = 'You are a helpful AI assistant. Follow these instructions carefully: Summarize the latest customer feedback.';
        System.assertEquals(expected, results[0].formattedPrompt, 'Formatted prompt did not match expected output');
    }

    @IsTest
    static void testBuildPrompt_EmptyInput() {
        // Step 1: Prepare test data with empty string
        PromptBuilderAction.PromptRequest req = new PromptBuilderAction.PromptRequest();
        req.inputText = '';
        List<PromptBuilderAction.PromptRequest> requestList = new List<PromptBuilderAction.PromptRequest>{ req };

        // Step 2: Call method
        List<PromptBuilderAction.PromptResponse> results = PromptBuilderAction.buildPrompt(requestList);

        // Step 3: Validate response
        System.assertEquals(1, results.size(), 'Should still return one response even for empty input');
        System.assertEquals(
            'You are a helpful AI assistant. Follow these instructions carefully: ',
            results[0].formattedPrompt,
            'Prompt should include the prefix even if input is empty'
        );
    }

    @IsTest
    static void testBuildPrompt_MultipleInputs() {
        // Step 1: Create multiple inputs
        List<PromptBuilderAction.PromptRequest> requests = new List<PromptBuilderAction.PromptRequest>();
        for (Integer i = 0; i < 3; i++) {
            PromptBuilderAction.PromptRequest r = new PromptBuilderAction.PromptRequest();
            r.inputText = 'Task ' + i;
            requests.add(r);
        }

        // Step 2: Call method
        List<PromptBuilderAction.PromptResponse> results = PromptBuilderAction.buildPrompt(requests);

        // Step 3: Validate multiple outputs
        System.assertEquals(3, results.size(), 'Should return 3 formatted prompts');

        for (Integer i = 0; i < results.size(); i++) {
            String expectedPrefix = 'You are a helpful AI assistant. Follow these instructions carefully: Task ' + i;
            System.assertEquals(expectedPrefix, results[i].formattedPrompt);
        }
    }
}