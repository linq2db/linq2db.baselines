-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`e`.`Value1`,
	CAST(Coalesce(`j`.`Value1`, 0) AS CHAR(11)),
	Lower(CAST(Coalesce(`j`.`Key`, '00000000-0000-0000-0000-000000000000') AS CHAR(36))),
	CASE
		WHEN Coalesce(`j`.`Value1`, 0) >= 5 THEN Coalesce(`j`.`Value1`, 0)
		ELSE 5
	END,
	CASE
		WHEN Coalesce(`j`.`Value1`, 0) <= -5 THEN Coalesce(`j`.`Value1`, 0)
		ELSE -5
	END,
	CONCAT(CAST(Coalesce(`j`.`Value1`, 0) AS CHAR(11)), '!'),
	CONCAT(Coalesce(`j`.`Name`, ''), '!'),
	Date_Add(Coalesce(`j`.`Date`, '0001-01-01'), Interval 10 Day),
	Extract(year from Date_Add(Coalesce(`j`.`Date`, '0001-01-01'), Interval 10 Day)),
	Extract(day from Date_Add(Coalesce(`j`.`Date`, '0001-01-01'), Interval 10 Day))
FROM
	`TranslatedMemberEntity` `e`
		LEFT JOIN `TranslatedMemberEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

