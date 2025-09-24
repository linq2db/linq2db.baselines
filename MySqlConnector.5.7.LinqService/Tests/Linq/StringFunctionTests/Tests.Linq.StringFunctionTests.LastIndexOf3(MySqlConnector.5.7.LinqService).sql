BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`PersonID`,
	Concat('123', `p`.`FirstName`, '0123451234')
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1 AND 1 = Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '0123451234'), 6, 6))) AND
	Locate('123', Left(Concat('123', `p`.`FirstName`, '0123451234'), 11), 6) <> 0

