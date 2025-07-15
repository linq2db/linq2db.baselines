BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE  
FROM
	`InheritanceParent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
DisposeTransaction
