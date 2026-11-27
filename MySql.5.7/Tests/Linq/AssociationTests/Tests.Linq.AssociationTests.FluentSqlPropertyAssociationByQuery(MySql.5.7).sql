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
			`SqlPropertyAssociationRelation` `r`
		WHERE
			`r`.`Deleted` = 0 AND `r`.`EntityId` = `t`.`Id`
	)

