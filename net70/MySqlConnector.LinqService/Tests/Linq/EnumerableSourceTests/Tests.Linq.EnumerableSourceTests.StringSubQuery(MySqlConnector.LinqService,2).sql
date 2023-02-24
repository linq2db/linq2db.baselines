BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`FirstName`,
	`t`.`PersonID`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'j' AS `item` FROM DUAL
				UNION ALL
				SELECT 'o' FROM DUAL
				UNION ALL
				SELECT 'h' FROM DUAL
				UNION ALL
				SELECT 'n' FROM DUAL) `x`
		WHERE
			Locate(`x`.`item`, `t`.`FirstName`) - 1 > 0
	)

