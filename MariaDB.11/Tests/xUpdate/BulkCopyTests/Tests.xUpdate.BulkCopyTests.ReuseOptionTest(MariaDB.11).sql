﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(111001,NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(111001,0)

BeforeExecute
DisposeTransaction
