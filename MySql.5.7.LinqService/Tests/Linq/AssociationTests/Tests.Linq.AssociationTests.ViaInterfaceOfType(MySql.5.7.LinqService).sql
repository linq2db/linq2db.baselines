BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`SubEntity` `a_SubEntities`
		WHERE
			`x`.`Id` = `a_SubEntities`.`MainEntityId`
	)
FROM
	`MainEntity` `x`

