-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @CoarseMidnight Datetime -- DateTime
SET     @CoarseMidnight = '2026-06-01'

SELECT
	COUNT(*)
FROM
	`ConvertedDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN (@CoarseMidnight)

