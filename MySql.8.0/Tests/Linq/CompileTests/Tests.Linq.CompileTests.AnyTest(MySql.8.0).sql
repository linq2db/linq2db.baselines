BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = @p
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Child` `c_1`
			WHERE
				`c_1`.`ParentID` = @p
		)
			THEN 1
		ELSE 0
	END as `c1`

