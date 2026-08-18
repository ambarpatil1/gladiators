// File: force-app/main/default/classes/PromptBuilderAction.cls
public with sharing class PromptBuilderAction {

    // Invocable method that accepts input text and builds a structured prompt
    @InvocableMethod(
        label='Prompt Builder Action'
        description='Takes a base user prompt and formats it for AI generation.'
    )
    public static List<PromptResponse> buildPrompt(List<PromptRequest> requests) {
        List<PromptResponse> responses = new List<PromptResponse>();

        for (PromptRequest req : requests) {
            String formattedPrompt = 'You are a helpful AI assistant. Follow these instructions carefully: ' + req.inputText;
            responses.add(new PromptResponse(formattedPrompt));
        }
        return responses;
    }

    // Input structure
    public class PromptRequest {
        @InvocableVariable(required=true label='Input Text')
        public String inputText;
    }

    // Output structure
    public class PromptResponse {
        @InvocableVariable(label='Formatted Prompt')
        public String formattedPrompt;
        
        public PromptResponse(String prompt) {
            this.formattedPrompt = prompt;
        }
    }
}