BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

