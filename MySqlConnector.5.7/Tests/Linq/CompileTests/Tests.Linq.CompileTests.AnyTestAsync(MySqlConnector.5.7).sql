BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @p Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = @p
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)
DECLARE @p Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = @p
		)
			THEN 1
		ELSE 0
	END as `c1`

