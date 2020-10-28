BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN Locate('123', Left(Concat('123', `p`.`FirstName`, '0123451234'), 11), 6) = 0
			THEN -1
		ELSE 11 - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '0123451234'), 6, 6))) - 2
	END = 8 AND
	`p`.`PersonID` = 1

