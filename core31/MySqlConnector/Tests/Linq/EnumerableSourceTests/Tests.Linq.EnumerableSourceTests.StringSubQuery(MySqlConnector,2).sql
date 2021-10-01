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
				SELECT 'j' AS `item`
				UNION ALL
				SELECT 'o'
				UNION ALL
				SELECT 'h'
				UNION ALL
				SELECT 'n') `t1`
		WHERE
			Locate(`t1`.`item`, `t`.`FirstName`) - 1 > 0
	)

