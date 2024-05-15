BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1002

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`Parent`
WHERE
	`Parent`.`ParentID` IN (1001, 1002)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

