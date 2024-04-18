BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value1 Int32
SET     @Value1 = 100

SELECT
	Coalesce(`p`.`Value1`, @Value1)
FROM
	`Parent` `p`

