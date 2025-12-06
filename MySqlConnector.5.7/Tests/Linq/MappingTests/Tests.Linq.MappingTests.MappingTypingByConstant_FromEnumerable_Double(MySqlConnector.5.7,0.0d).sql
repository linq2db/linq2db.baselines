-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(0 AS DECIMAL(29, 10)) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(3147483648 AS DECIMAL(29, 10)) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

