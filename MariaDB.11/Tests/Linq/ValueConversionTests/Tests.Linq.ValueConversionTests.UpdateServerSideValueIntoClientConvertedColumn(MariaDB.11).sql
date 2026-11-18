-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @test Datetime -- DateTime
SET     @test = '2026-06-06 02:01:01'

UPDATE
	`Issue5975Row` `t1`
SET
	`t1`.`Date` = CASE
		WHEN `t1`.`Date` IS NOT NULL THEN @test
		ELSE Date_Add(`t1`.`Plain`, Interval 1 Day)
	END

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Plain`,
	`t1`.`Date`
FROM
	`Issue5975Row` `t1`
ORDER BY
	`t1`.`Id`

