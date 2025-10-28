BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CASE
		WHEN `p`.`Value1` IS NOT NULL THEN `p`.`Value1`
		ELSE 0
	END
FROM
	`Parent` `p`

