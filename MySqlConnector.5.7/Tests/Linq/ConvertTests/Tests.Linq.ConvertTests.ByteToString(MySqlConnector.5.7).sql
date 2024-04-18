BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

