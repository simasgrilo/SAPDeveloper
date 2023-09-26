
using fullstack_dev_challenge from '../db/data-model.cds';

service DevChallengeService @(path: '/dev-challenge') {
    @odata.draft.enabled: true // this line is an annotatoion used to indicate that the entity Tests is enabled for the draft funtionality.
    //this allows clients to work with draft versions of data before commiting changes. This can be useful in 
    //processes such as creation, editing and reviewing of content before it becomes official, need to be supported. 
    //Because our application will need data input by end users
    entity Tests as projection on fullstack_dev_challenge.Tests;
    entity Questions as projection on fullstack_dev_challenge.Questions;
    ///cat: cloud application tools
    //cds: much more than CDS views you're used to.
    //the entities will be exposed here as CDS services
}