﻿BeforeExecute
BeginTransaction
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DELETE  
FROM
	`InheritanceParent`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
DisposeTransaction
