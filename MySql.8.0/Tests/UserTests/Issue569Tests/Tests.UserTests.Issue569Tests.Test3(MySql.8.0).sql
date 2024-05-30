BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PersonID`,
	`pt`.`PersonID`,
	`d`.`Taxonomy`
FROM
	`Person` `t1`
		CROSS JOIN `Patient` `pt`
		CROSS JOIN `Doctor` `d`
ORDER BY
	`t1`.`PersonID`,
	`pt`.`PersonID`,
	`d`.`Taxonomy`

