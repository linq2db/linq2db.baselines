BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id1 Int32
SET     @id1 = 1
DECLARE @id2 Int32
SET     @id2 = 1
DECLARE @id3 Int32
SET     @id3 = 10000
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	((`p`.`ParentID` = @id1 OR `p`.`ParentID` >= @id2) OR `p`.`ParentID` >= @id3)
ORDER BY
	`p`.`ParentID`
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @id1 Int32
SET     @id1 = 2
DECLARE @id2 Int32
SET     @id2 = 2
DECLARE @id3 Int32
SET     @id3 = 10000
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	((`p`.`ParentID` = @id1 OR `p`.`ParentID` >= @id2) OR `p`.`ParentID` >= @id3)
ORDER BY
	`p`.`ParentID`
LIMIT @take

