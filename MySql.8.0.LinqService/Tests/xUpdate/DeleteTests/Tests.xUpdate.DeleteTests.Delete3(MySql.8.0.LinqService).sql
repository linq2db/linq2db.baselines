BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`Child`
WHERE
	`Child`.`ChildID` IN (1001, 1002)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
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
	1,
	1002
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = 1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE   `c_1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`ParentID` = 1 AND `c_1`.`ChildID` IN (1001, 1002)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = 1

