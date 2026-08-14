-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(`t`.`IntValue`) OVER () > 0
FROM
	`WindowFunctionTestEntity` `t`

