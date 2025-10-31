-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

