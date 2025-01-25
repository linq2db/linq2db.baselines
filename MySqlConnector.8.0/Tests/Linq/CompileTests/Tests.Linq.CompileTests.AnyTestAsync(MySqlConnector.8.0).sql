BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = @ParentID
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = @ParentID
		)
			THEN 1
		ELSE 0
	END as `c1`

