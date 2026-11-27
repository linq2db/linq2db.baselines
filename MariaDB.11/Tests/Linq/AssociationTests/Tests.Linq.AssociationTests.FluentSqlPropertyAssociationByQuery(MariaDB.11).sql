-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

