BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`GrandChild`
WHERE
	`GrandChild`.`GrandChildID` IN (1001, 1002)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1,
	1,
	1001
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `GrandChild`
(
	`ParentID`,
	`ChildID`,
	`GrandChildID`
)
VALUES
(
	1,
	2,
	1002
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`GrandChild` `gc`
WHERE
	`gc`.`ParentID` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `gc`
FROM
	`GrandChild` `gc`
		INNER JOIN `Parent` `a_Parent` ON `gc`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`ParentID` = 1 AND `gc`.`GrandChildID` IN (1001, 1002)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`GrandChild` `gc`
WHERE
	`gc`.`ParentID` = 1

