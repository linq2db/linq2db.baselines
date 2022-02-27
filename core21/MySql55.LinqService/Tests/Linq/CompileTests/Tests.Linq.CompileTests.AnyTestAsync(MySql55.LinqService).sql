BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = @ParentID
	) as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = @ParentID
	) as `c1`

