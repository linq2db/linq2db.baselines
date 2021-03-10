BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Length_2 Int32
SET     @Length_2 = 9

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	CASE
		WHEN Locate('123', Left(Concat('123', `p`.`FirstName`, '0123451234'), 11), 6) = 0
			THEN -1
		ELSE @Length_2 - Locate('321', Reverse(Substring(Concat('123', `p`.`FirstName`, '0123451234'), 6, 6)))
	END = 8 AND
	`p`.`PersonID` = 1

