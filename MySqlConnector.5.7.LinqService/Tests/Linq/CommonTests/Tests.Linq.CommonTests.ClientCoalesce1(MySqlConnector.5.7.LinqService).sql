BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	Coalesce(`p`.`Value1`, @Value1)
FROM
	`Parent` `p`

