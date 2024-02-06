
const cds = require('@sap/cds')

module.exports = class DevChallengeService extends cds.ApplicationService {// this is a Node.js service
    init() {
        return super.init()
    }

    assignQuestionsToTest(userID, questionsCount) {
        if (questionsCount < 1 || !questionsCount) {
            throw new Error("Questions count should be one or more.");
        }
        let q1 = SELECT.from('Tests').where({test_id: ' '}.count('*'));
        if (questionsCount > q1) {
            return "Please add more " + q1 - questionsCount + " questions";
        }
        let insertTests = null;
    }
}