BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN Char_Length(`p`.`FirstName`) <> 0 THEN `p`.`FirstName`
		WHEN NOT (`p`.`MiddleName` IS NULL OR Char_Length(`p`.`MiddleName`) = 0 AND `p`.`MiddleName` IS NOT NULL)
			THEN `p`.`MiddleName`
		ELSE `p`.`LastName`
	END
FROM
	`Person` `p`

