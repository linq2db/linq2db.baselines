-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = 1
WHERE
	`p`.`ParentID` = 1

BeginTransaction(Unspecified)
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = NULL
WHERE
	`p`.`ParentID` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

RollbackTransaction
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1
LIMIT 1

