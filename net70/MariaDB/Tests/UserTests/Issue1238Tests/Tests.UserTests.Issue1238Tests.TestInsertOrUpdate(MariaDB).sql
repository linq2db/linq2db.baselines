BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `t1`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `InheritanceParent`
(
	`InheritanceParentId`,
	`Name`,
	`TypeDiscriminator`
)
VALUES
(
	143,
	NULL,
	1
)
ON DUPLICATE KEY UPDATE
	`TypeDiscriminator` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `InheritanceParent`
(
	`InheritanceParentId`,
	`Name`,
	`TypeDiscriminator`
)
VALUES
(
	143,
	NULL,
	1
)
ON DUPLICATE KEY UPDATE
	`TypeDiscriminator` = 1

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
DisposeTransaction
