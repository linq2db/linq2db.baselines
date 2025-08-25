BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

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
				SELECT 'n') `x`
		WHERE
			Locate(`x`.`item`, `t`.`FirstName`) - 1 > 0
	)

