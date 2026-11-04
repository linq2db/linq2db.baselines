-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
UPDATE
	`NullableFlagTable` `t1`
SET
	`t1`.`Flag` = CASE
		WHEN `t1`.`A` = `t1`.`B` OR `t1`.`A` IS NULL AND `t1`.`B` IS NULL
			THEN 1
		ELSE 0
	END

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`,
	`r`.`Flag`
FROM
	`NullableFlagTable` `r`
ORDER BY
	`r`.`Id`

