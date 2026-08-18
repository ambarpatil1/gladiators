/**
 * Created by david.fernandez on 31.10.2025.
 */

public with sharing class Example {

    // Main Invocable method that Flow will call
    @InvocableMethod(label='Example Action' description='Processes three input parameters')
    public static List<Response> execute(List<Request> requests) {
        List<Response> responses = new List<Response>();

        for (Request req : requests) {
            Response res = new Response();
            // Example: combine or process the inputs
            res.outputMessage = 'Received: ' + req.inputOne + ', ' + req.inputTwo + ', ' + req.inputThree;
            responses.add(res);
        }

        return responses;
    }

    // Request class defines input parameters for Flow
    public class Request {
        @InvocableVariable(label='Input One' description='First input value')
        public String inputOne;

        @InvocableVariable(label='Input Two' description='Second input value')
        public String inputTwo;

        @InvocableVariable(label='Input Three' description='Third input value')
        public String inputThree;
    }

    // Optional: Response class defines what is returned to Flow
    public class Response {
        @InvocableVariable(label='Output Message' description='Combined output message')
        public String outputMessage;
    }
}