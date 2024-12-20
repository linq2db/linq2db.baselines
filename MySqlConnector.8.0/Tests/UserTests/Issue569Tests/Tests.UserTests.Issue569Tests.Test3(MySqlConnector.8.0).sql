BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	`pt`.`PersonID`,
	`d`.`Taxonomy`
FROM
	`Person` `p`
		CROSS JOIN `Patient` `pt`
		CROSS JOIN `Doctor` `d`
ORDER BY
	`p`.`PersonID`,
	`pt`.`PersonID`,
	`d`.`Taxonomy`

