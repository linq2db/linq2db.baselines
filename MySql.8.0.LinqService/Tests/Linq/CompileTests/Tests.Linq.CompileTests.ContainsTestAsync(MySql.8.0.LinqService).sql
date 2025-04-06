BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @p Int32
SET     @p = 1

SELECT
	CASE
		WHEN @p IN (
			SELECT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @p Int32
SET     @p = -1

SELECT
	CASE
		WHEN @p IN (
			SELECT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

