BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
				SELECT -10 AS `X`, -10 AS `X0`, 10 AS `Y`) `t`
		WHERE
			`x`.`position`.x > `t`.`X`
	)
LIMIT @take

