BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_`.`PersonID`,
	`_`.`LastName`
FROM
	`Person` `_`
ORDER BY
	CASE
		WHEN `_`.`PersonID` IN (1, 3)
			THEN 1
		ELSE 0
	END

