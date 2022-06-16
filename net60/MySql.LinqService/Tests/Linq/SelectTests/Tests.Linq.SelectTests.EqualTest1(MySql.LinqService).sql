BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
LIMIT @take

