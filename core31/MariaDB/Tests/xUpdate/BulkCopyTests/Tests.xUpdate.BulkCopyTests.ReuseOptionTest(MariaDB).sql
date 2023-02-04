BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(111001,NULL)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(111001,0)

BeforeExecute
DisposeTransaction
