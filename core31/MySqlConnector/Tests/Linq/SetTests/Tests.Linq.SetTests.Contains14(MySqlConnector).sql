BeforeExecute
-- MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Parent` `p`
			WHERE
				`p`.`ParentID` = 1 AND `p`.`ParentID` = @ParentID
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Parent` `p`
			WHERE
				`p`.`ParentID` = 1 AND `p`.`ParentID` = @ParentID
		)
			THEN 1
		ELSE 0
	END as `c1`

