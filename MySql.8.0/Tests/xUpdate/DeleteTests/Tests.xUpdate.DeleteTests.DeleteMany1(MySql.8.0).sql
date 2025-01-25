BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	1001
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1001,
	2
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `a_Children`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`p`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ParentID` >= 1000

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` >= 1000

