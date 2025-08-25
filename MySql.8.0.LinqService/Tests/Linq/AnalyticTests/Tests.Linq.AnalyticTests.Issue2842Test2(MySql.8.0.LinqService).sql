BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`x`.`FirstName`,
	RANK() OVER(ORDER BY CASE
		WHEN `x`.`PersonID` = 2 THEN 1
		ELSE 0
	END)
FROM
	`Person` `x`

