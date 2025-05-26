# Credit Rate Estimation app 💵

The application calculates the interest rate based on the number of days in the loan term, as well as the reduction of this rate depending on the loan amount.

For which input values ​​will you test the following logic, given that the values ​​for the days of the loan term and the loan amount are entered in specially designated fields? The program sets the interest rate on the loan based on its term and amount:

### Loan term
- Loan term up to 92 days – base interest rate = 20%;
- Loan term from 93 to 182 days – base interest rate = 19%;
- Loan term from 183 to 365 days – base interest rate = 18%.

    If the loan amount is up to 50,000, the base interest rate remains unchanged
    If the loan amount is from 50,000 to 100,000, the base interest rate is reduced by 0.5%
    If the loan amount is over 100,000, the base interest rate is reduced by 1.5%
