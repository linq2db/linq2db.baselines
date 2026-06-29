-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	SUM(`p`.`Value1`) OVER (ORDER BY `p`.`Value1`)
FROM
	`Parent` `p`

