BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(1 AS SIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`arg`.`Id`,
	`arg`.`Value`
FROM
	`Person` `entity`
		INNER JOIN (
			SELECT 1 AS `Id`, CAST(2147483648 AS SIGNED) AS `Value`) `arg` ON `entity`.`PersonID` = `arg`.`Id`

