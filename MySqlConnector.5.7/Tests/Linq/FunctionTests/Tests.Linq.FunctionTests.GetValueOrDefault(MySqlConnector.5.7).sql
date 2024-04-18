BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @default Int32
SET     @default = 0

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	Coalesce(`p`.`Value1`, @default) > 0

