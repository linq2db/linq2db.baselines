﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN Char_Length(`p`.`FirstName`) <> 0 THEN `p`.`FirstName`
		WHEN NOT (`p`.`MiddleName` IS NULL OR Char_Length(`p`.`MiddleName`) = 0)
			THEN `p`.`MiddleName`
		ELSE `p`.`LastName`
	END
FROM
	`Person` `p`

