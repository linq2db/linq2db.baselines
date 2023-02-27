BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @p_1 Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

