-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `r`.`Id` > 0 THEN `r`.`OpenedOn`
		ELSE `r`.`ClosedOn`
	END
FROM
	`CoarseDayPairRow` `r`
UNION ALL
SELECT
	CAST('2026-06-01 10:00:00' AS DATETIME)
FROM
	`CoarseDayPairRow` `r_1`

