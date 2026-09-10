-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 2
DECLARE @ID_1 Int32
SET     @ID_1 = 3

SELECT
	`n`.`ID`,
	`n`.`FirstName`
FROM
	`Person` `t1`
		INNER JOIN (
			SELECT @ID AS `ID`, 'Janet' AS `FirstName`
			UNION ALL
			SELECT @ID_1, 'Doe') `n` ON `t1`.`PersonID` = `n`.`ID`
ORDER BY
	`n`.`ID`

