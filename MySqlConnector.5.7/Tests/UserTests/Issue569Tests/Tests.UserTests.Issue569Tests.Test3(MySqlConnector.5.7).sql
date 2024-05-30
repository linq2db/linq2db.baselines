BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

