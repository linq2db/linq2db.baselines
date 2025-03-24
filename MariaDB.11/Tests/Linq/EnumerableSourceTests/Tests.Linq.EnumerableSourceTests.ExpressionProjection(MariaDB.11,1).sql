BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	`n`.`PersonID`,
	`n`.`FirstName`
FROM
	`Person` `t1`
		INNER JOIN (
			SELECT @ID AS `PersonID`, 'Janet' AS `FirstName`
			UNION ALL
			SELECT @ID_1, 'Doe') `n` ON `t1`.`PersonID` = `n`.`PersonID`
ORDER BY
	`n`.`PersonID`

