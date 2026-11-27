-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

