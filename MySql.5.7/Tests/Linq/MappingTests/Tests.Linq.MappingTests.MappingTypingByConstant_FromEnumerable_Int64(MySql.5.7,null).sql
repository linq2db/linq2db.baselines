-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(NULL AS SIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(2147483648 AS SIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

