-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CASE
		WHEN `s`.`Kind` = 'C1' THEN `s`.`Kind`
		ELSE NULL
	END
FROM
	`Parent` `x`
		INNER JOIN `SourceSchemaShape` `s` ON `x`.`ParentID` = `s`.`Id`
ORDER BY
	`s`.`Id`

