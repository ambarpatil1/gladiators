import { LightningElement, api, wire } from 'lwc';
import forAccount from '@salesforce/apex/AccountGreeting.forAccount';

export default class GreetingCard extends LightningElement {
    @api recordId?: string;

    @wire(forAccount, { accountId: '$recordId' })
    greeting?: { data?: string; error?: unknown };

    get message(): string {
        return this.greeting?.data ?? 'Hello, there!';
    }

    get isLoading(): boolean {
        return !this.greeting?.data && !this.greeting?.error;
    }
}
