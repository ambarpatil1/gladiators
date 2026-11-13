import { LightningElement, api, wire } from 'lwc';
import forAccount from '@salesforce/apex/AccountGreeting.forAccount';

// Compiled from greetingCard.ts. Edit the .ts, not this file.
export default class GreetingCard extends LightningElement {
    @api recordId;

    @wire(forAccount, { accountId: '$recordId' })
    greeting;

    get message() {
        return this.greeting && this.greeting.data ? this.greeting.data : 'Hello, there!';
    }
}
