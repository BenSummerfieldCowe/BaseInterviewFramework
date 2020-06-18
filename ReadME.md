Steps
* Clone this repo
* Make sure you have an IDE installed, we use Intellij (LINK)
* Import the project and let maven install the depencies

Please don't do any further work ( you can test to see if it runs)
The point of this exercise is to hear you talk through your work as you go. 
Given the time limitations there will be things may do different, please explain anything you might change as you go

1. Create an automated test to check the following:

Goal: On the Totaljobs homepage, verify doing a search for a Tester of at least £30,000 annually, based in London and is permanent returns results

A scenario has been provided to cover this

```
Scenario: Results displayed for advanced search
   Given I am on the Total Jobs homepage
   When I make a search with details
   Then I am shown job results
   ```

All the initial hooks and chomedriver setup are already configured so you do not need to worry about this.

If you would prefer not to use Java, you can use another language, however we are more interested in your code writing skills and approaches to writing tests rather than your ability setting up a framework.



2. The second scenario to implement is for the following goal:

On the Totaljobs homepage, if I look for a "Permanent" Software engineer role, based in london making at least "£30,000" annually then I should offered an opportunity to see all IT jobs
