﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(111001,NULL)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(111001,0)

BeforeExecute
DisposeTransaction
