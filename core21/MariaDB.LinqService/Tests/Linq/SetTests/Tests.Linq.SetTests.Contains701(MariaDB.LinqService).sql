BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @ParentID Int32
SET     @ParentID = 11
DECLARE @Value1 Int32
SET     @Value1 = 11

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			(`a_Parent`.`ParentID` = @ParentID AND `a_Parent`.`Value1` = @Value1)
	) as `c1`

