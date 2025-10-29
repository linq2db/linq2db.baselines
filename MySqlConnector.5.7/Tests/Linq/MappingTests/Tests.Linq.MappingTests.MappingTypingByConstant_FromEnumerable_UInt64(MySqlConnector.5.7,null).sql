-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(NULL AS UNSIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(2147483648 AS UNSIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

