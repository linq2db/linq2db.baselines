-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @value Time
SET     @value = 00:00:00

SELECT
	`e`.`Id`,
	CASE
		WHEN Coalesce(`j`.`Span`, @value) < `e`.`Span` THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(`j`.`Span`, @value) = @value THEN 'y'
		ELSE 'n'
	END
FROM
	`MissedSpanEntity` `e`
		LEFT JOIN `MissedSpanEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Span`
FROM
	`MissedSpanEntity` `t1`

