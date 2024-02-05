BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @p Int32
SET     @p = 1
DECLARE @p_1 Int32
SET     @p_1 = 2
DECLARE @p_2 Int32
SET     @p_2 = 3
DECLARE @param Int32
SET     @param = 4
DECLARE @take Int32
SET     @take = 1

SELECT
	`o`.`ParentID`,
	`o`.`Value1`
FROM
	`Parent` `o`
WHERE
	(`o`.`ParentID` IN (@p, @p_1, @p_2) OR `o`.`ParentID` = @param)
LIMIT @take

