BeforeExecute
-- MySqlConnector MySql
DECLARE @RandValue Int32
SET     @RandValue = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			`c_1`.`ParentID`,
			@RandValue as `RandValue`
		FROM
			`Child` `c_1`
	) `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`RandValue`

