BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	`n`.`FirstName`,
	`n`.`PersonID`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT 'Janet' AS `FirstName`, @ID AS `PersonID`
			UNION ALL
			SELECT 'Doe', @ID_1) `n` ON `p`.`PersonID` = `n`.`PersonID`
ORDER BY
	`n`.`PersonID`

