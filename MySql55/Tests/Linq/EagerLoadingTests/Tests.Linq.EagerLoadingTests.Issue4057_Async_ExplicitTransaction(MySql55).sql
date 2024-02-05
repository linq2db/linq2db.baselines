BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`lw_Parent`.`ParentID`,
	`detail`.`ParentID`,
	`detail`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			(
				SELECT
					`x`.`ParentID`
				FROM
					`Parent` `x`
				WHERE
					`x`.`ParentID` = 3
				LIMIT @take
			) `t1`
	) `lw_Parent`
		INNER JOIN `Child` `detail` ON `lw_Parent`.`ParentID` = `detail`.`ParentID`

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = 3
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`lw_Parent`.`ParentID`,
	`detail`.`ParentID`,
	`detail`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			(
				SELECT
					`x`.`ParentID`
				FROM
					`Parent` `x`
				WHERE
					`x`.`ParentID` = 3
				LIMIT @take
			) `t1`
	) `lw_Parent`
		INNER JOIN `Child` `detail` ON `lw_Parent`.`ParentID` = `detail`.`ParentID`

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = 3
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`lw_Parent`.`ParentID`,
	`detail`.`ParentID`,
	`detail`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			(
				SELECT
					`x`.`ParentID`
				FROM
					`Parent` `x`
				WHERE
					`x`.`ParentID` = 3
				LIMIT @take
			) `t1`
	) `lw_Parent`
		INNER JOIN `Child` `detail` ON `lw_Parent`.`ParentID` = `detail`.`ParentID`

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`x`.`ParentID`,
	`x`.`Value1`
FROM
	`Parent` `x`
WHERE
	`x`.`ParentID` = 3
LIMIT @take

BeforeExecute
DisposeTransaction
