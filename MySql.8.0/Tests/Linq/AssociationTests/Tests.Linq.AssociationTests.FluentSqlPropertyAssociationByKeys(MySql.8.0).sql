-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t`.`Id`
FROM
	`SqlPropertyAssociationEntity` `t`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`SqlPropertyAssociationRelation` `a_relationship`
		WHERE
			`t`.`Id` = `a_relationship`.`EntityId`
	)

