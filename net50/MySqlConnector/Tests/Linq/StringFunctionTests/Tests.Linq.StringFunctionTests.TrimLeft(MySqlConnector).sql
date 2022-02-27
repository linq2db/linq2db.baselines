BeforeExecute
-- MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	LTrim(Concat('  ', `p`.`FirstName`, ' ')) = 'John ' AND
	`p`.`PersonID` = 1

