-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	Coalesce(`x`.`Value1`, @Value1) > 10

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`

