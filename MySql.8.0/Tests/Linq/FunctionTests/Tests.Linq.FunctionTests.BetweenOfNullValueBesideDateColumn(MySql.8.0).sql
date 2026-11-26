-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@none BETWEEN `r`.`Day` AND @later

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Day` AND @later

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Stamp` AND @later

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Day` AND @later

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Stamp` AND @later

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Datetime -- DateTime
SET     @value = '2020-01-02 12:00:00'
DECLARE @none Datetime -- DateTime
SET     @none = NULL

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@value NOT BETWEEN `r`.`Day` AND @none

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@none NOT BETWEEN `r`.`Day` AND @high

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @some Datetime -- DateTime
SET     @some = '2020-01-02 12:00:00'
DECLARE @none Datetime -- DateTime
SET     @none = NULL

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	@some NOT BETWEEN `r`.`Day` AND @none

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @none Datetime -- DateTime
SET     @none = NULL
DECLARE @later Datetime -- DateTime
SET     @later = '2020-01-03'

SELECT
	CASE
		WHEN @none NOT BETWEEN `r`.`Day` AND @later THEN 'a'
		ELSE 'b'
	END
FROM
	`BetweenDayRow` `r`
ORDER BY
	`r`.`Id`

