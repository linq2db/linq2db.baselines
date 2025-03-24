BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57
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
				SELECT -10 AS `X`, 10 AS `Y`) `t`
		WHERE
			`x`.`position`.x > `t`.`X`
	)
LIMIT @take

