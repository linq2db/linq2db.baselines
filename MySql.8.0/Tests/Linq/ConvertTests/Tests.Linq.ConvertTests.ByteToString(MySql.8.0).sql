BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`c1`
FROM
	(
		SELECT
			Cast(Cast(`t`.`ID` as UNSIGNED) as CHAR(3)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	Char_Length(`p`.`c1`) > 0

