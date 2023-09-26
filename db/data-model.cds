using {cuid, managed, User} from '@sap/cds/common';

namespace fullstack_dev_challenge;

entity Tests {
    key ID : UUID;
    createdAt : Timestamp; //timeStamp is UNIX POSIX from january 1st, 1970 in ms. It relies on JS's Date object.
    createdBy : User;
    modifiedAt : Timestamp;
    modifiedBy : User;
    title : String;
    description : String;
    questions : Association to many Questions;

}

entity Questions {
    key ID : UUID;
    text : String;
    test: Association to many Tests;
    answer : Composition of Answers;

}

aspect Answers {
    key ID : UUID;
    text : String;
}