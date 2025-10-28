BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `c_1`
		WHERE
			`c_1`.`Value1` IS NULL
	) as `c1`

