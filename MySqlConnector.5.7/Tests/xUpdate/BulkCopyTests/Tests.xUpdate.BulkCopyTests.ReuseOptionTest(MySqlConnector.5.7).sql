﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(111001,NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(111001,0)

BeforeExecute
DisposeTransaction
