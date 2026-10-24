-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @CoarseMidnight Datetime -- DateTime
SET     @CoarseMidnight = '2026-06-01'

SELECT
	COUNT(*)
FROM
	`ConvertedDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN (@CoarseMidnight)

