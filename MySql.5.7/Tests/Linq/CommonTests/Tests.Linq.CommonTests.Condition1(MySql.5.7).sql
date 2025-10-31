-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN CHAR_LENGTH(`p`.`FirstName`) <> 0 THEN `p`.`FirstName`
		WHEN NOT (`p`.`MiddleName` IS NULL OR CHAR_LENGTH(`p`.`MiddleName`) = 0)
			THEN `p`.`MiddleName`
		ELSE `p`.`LastName`
	END
FROM
	`Person` `p`

