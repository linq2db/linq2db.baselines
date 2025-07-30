BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SET GLOBAL local_infile=ON

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
INSERT BULK `Person`(FirstName, PersonID, LastName, MiddleName, Gender)

BeforeExecute
INSERT BULK `Person`(FirstName, PersonID, LastName, MiddleName, Gender)

BeforeExecute
DisposeTransaction
