-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`PersonID`,
	CONCAT('123', `p`.`FirstName`, '012345')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND CHAR_LENGTH(CONCAT('123', `p`.`FirstName`, '012345')) - Locate('321', Reverse(Substring(CONCAT('123', `p`.`FirstName`, '012345'), 6, CHAR_LENGTH(CONCAT('123', `p`.`FirstName`, '012345')) - 5))) = 10 AND
	Locate('123', CONCAT('123', `p`.`FirstName`, '012345'), 6) <> 0

