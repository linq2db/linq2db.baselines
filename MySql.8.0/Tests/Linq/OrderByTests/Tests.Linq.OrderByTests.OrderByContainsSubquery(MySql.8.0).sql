BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`PersonID`,
	`t1`.`LastName`,
	CASE
		WHEN `t1`.`PersonID` IN (1, 3) THEN 1
		ELSE 0
	END
FROM
	`Person` `t1`
ORDER BY
	CASE
		WHEN `t1`.`PersonID` IN (1, 3) THEN 1
		ELSE 0
	END

