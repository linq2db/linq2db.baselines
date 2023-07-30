BeforeExecute
-- MySqlConnector MySql
DECLARE @default Int32
SET     @default = 0

SELECT
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	Coalesce(`p`.`Value1`, @default) > 0

