BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN @ParentID IN (
			SELECT
				`p`.`ParentID`
			FROM
				`Parent` `p`
			WHERE
				`p`.`ParentID` = 1
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN @ParentID IN (
			SELECT
				`p`.`ParentID`
			FROM
				`Parent` `p`
			WHERE
				`p`.`ParentID` = 1
		)
			THEN 1
		ELSE 0
	END as `c1`

