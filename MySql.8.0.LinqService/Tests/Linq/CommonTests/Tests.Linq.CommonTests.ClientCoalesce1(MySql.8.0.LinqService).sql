BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	Coalesce(`x`.`Value1`, @Value1) > 10

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`

