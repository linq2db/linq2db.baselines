BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`position`
FROM
	`entities` `x`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS `X`) `t`
		WHERE
			`x`.`position`.x > `t`.`X`
	)
LIMIT @take

