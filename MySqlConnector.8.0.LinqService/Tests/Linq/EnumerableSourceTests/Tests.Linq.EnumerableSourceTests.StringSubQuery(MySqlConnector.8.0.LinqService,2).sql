BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

