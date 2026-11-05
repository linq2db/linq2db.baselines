-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
UPDATE
	`SetFlagTable` `t1`
SET
	`t1`.`F` = CASE
		WHEN `t1`.`C` IS NULL THEN `t1`.`F`
		WHEN `t1`.`A` = `t1`.`B` OR `t1`.`A` IS NULL AND `t1`.`B` IS NULL
			THEN 1
		ELSE 0
	END

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`F`
FROM
	`SetFlagTable` `r`
ORDER BY
	`r`.`Id`

