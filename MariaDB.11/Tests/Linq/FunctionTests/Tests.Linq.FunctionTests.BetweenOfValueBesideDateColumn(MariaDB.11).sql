-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Datetime -- DateTime
SET     @value = '2020-01-02 12:00:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-02 06:00:00'
DECLARE @value_1 Datetime -- DateTime
SET     @value_1 = '2020-01-02 12:00:00'
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	@value BETWEEN `r`.`Day` AND @high,
	0,
	@value NOT BETWEEN `r`.`Day` AND @high,
	1,
	@value BETWEEN `r`.`Day` AND `r`.`Stamp`,
	@value_1 >= `r`.`Day` AND @value <= `r`.`Stamp`,
	CASE
		WHEN @value NOT BETWEEN Coalesce(`d`.`Day`, '0001-01-01') AND @later
			THEN 'a'
		ELSE 'b'
	END
FROM
	`BetweenDayRow` `r`
		LEFT JOIN `BetweenDayRow` `d` ON `d`.`Id` = `r`.`Id` - 1
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Datetime -- DateTime
SET     @value = '2020-01-02 12:00:00'
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
		LEFT JOIN `BetweenDayRow` `d` ON `d`.`Id` = `r`.`Id` - 1
WHERE
	@value NOT BETWEEN `d`.`Day` AND @later

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @value Datetime -- DateTime
SET     @value = '2020-01-02 12:00:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-02 06:00:00'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@value BETWEEN `r`.`Day` AND @high OR @value >= Date(`r`.`Stamp`)
ORDER BY
	`r`.`Id`

