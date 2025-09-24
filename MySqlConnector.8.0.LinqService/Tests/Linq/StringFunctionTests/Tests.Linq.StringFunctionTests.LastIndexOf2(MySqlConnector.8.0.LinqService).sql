BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '012345')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND CHAR_LENGTH(Concat('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '012345'), 6, CHAR_LENGTH(Concat('123', `p`.`FirstName`, '012345')) - 5))) = 10 AND
	Locate('123', Concat('123', `p`.`FirstName`, '012345'), 6) <> 0

