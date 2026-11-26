-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

