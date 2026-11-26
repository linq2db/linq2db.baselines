-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

