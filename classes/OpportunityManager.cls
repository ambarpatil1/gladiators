public class OpportunityManager {
    public static void closeOpportunitiesAsLost(String accountId) {
    //Opportunities Updation
        List<Opportunity> opportunities = [SELECT Id, StageName 
                                           FROM Opportunity 
                                           WHERE AccountId = :accountId 
                                           AND IsClosed = false];

        for (Opportunity opp : opportunities) {
            opp.StageName = 'Closed Lost';
        }

        update opportunities;
    }
}