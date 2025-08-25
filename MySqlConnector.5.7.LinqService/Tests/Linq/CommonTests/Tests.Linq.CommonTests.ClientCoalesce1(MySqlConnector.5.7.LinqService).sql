BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	Coalesce(`x`.`Value1`, @Value1) > 10

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`

