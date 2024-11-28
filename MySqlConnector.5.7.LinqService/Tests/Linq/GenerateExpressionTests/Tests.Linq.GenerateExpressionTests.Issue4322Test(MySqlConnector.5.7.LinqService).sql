BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`position`
FROM
	`entities` `x`
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT -10 AS `X`) `t`
		WHERE
			`x`.`position`.x > `t`.`X`
	)
LIMIT @take

