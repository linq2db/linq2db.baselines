BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SET GLOBAL local_infile=ON

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
INSERT BULK `Person`(FirstName, PersonID, LastName, MiddleName, Gender)

BeforeExecute
INSERT BULK `Person`(FirstName, PersonID, LastName, MiddleName, Gender)

BeforeExecute
DisposeTransaction
