﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(1111,1111),
(2111,2111),
(3111,3111),
(4111,4111)

BeforeExecute
CommitTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 1111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 2111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 3111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ParentID Int32
SET     @ParentID = 4111

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = @ParentID

