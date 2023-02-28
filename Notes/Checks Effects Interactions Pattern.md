# Checks Effects Interactions Pattern

The checks effects interactions pattern is a secure coding pattern within Solidity on Ethereum which prevents an attacker from re-entering a contract over and over. It does this by ensuring that balances are updated correctly before sending a transaction. It does this by:

    []  Checking that the requirements are met before continuing execution.
    []  Updating balances and making changes before interacting with an external actor
    []  Finally, after the transaction is validated and the changes are made interactions are allowed with the external entity