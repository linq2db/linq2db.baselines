BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
INSERT BULK `Person`(FirstName, PersonID, LastName, MiddleName, Gender)

BeforeExecute
INSERT BULK `Person`(FirstName, PersonID, LastName, MiddleName, Gender)

BeforeExecute
DisposeTransaction
