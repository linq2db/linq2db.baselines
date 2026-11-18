-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Id_1 Int32
SET     @Id_1 = 21
DECLARE @Id_2 Int32
SET     @Id_2 = 22

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
		INNER JOIN (
			SELECT @Id AS `Id`
			UNION ALL
			SELECT @Id_1
			UNION ALL
			SELECT @Id_2) `r` ON `p`.`PersonID` = `r`.`Id`

