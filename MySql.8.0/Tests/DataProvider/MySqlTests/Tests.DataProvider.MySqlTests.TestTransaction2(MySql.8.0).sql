BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = 1
WHERE
	`p`.`ParentID` = 1

BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = NULL
WHERE
	`p`.`ParentID` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

