BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

