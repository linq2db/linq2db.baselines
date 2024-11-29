BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	CASE
		WHEN `r`.`PersonID` IN (1, 2, 3) THEN 1
		ELSE 0
	END
FROM
	`Person` `r`

