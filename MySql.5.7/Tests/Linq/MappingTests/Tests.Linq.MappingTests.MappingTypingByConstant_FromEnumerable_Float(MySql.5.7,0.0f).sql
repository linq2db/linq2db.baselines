-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(0 AS DECIMAL(29, 10)) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(3.14748365E+09 AS DECIMAL(29, 10)) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

