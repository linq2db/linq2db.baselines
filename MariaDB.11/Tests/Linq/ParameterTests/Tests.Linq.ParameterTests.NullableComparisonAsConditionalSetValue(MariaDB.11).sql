-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
UPDATE
	`TestBool` `t1`
SET
	`t1`.`Value` = CASE
		WHEN `t1`.`Id` > 0 THEN CASE
			WHEN `t1`.`Value` = 0 OR `t1`.`Value` IS NULL THEN 1
			ELSE 0
		END
		ELSE NULL
	END

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Value`
FROM
	`TestBool` `r`
ORDER BY
	`r`.`Id`

