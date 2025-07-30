BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(NULL AS DOUBLE) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(3147483648 AS DOUBLE) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

