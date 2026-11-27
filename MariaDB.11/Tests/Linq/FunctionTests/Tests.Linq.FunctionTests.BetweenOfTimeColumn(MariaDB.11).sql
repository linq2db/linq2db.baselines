-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @low Time
SET     @low = 01:30:00
DECLARE @high Time
SET     @high = 03:00:00

SELECT
	`r`.`Id`
FROM
	`BetweenTimeRow` `r`
WHERE
	`r`.`Value` BETWEEN @low AND @high
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @low Time
SET     @low = 01:30:00
DECLARE @high Time
SET     @high = 03:00:00

SELECT
	`r`.`Id`
FROM
	`BetweenTimeRow` `r`
WHERE
	`r`.`Value` NOT BETWEEN @low AND @high
ORDER BY
	`r`.`Id`

