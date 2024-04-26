BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE   `t1`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
DisposeTransaction
