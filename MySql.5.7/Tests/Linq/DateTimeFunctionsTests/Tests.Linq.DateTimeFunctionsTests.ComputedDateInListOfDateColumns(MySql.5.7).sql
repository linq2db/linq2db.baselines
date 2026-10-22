-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	`CoarseDayPairRow` `r`
WHERE
	Coalesce(`r`.`ClosedOn`, `r`.`OpenedOn`) IN (`r`.`OpenedOn`)

