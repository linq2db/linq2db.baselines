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
			`SqlPropertyAssociationRelation` `a_relationship`
		WHERE
			`t`.`Id` = `a_relationship`.`EntityId`
	)

