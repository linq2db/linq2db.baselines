BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1001,
	1,
	2
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE   `a_GrandChildren`
FROM
	`Parent` `gc`
		INNER JOIN `Child` `a_Children` ON `gc`.`ParentID` = `a_Children`.`ParentID`
		INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Children`.`ParentID` = `a_GrandChildren`.`ParentID` AND `a_Children`.`ChildID` = `a_GrandChildren`.`ChildID`
WHERE
	`gc`.`ParentID` IN (1001)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

