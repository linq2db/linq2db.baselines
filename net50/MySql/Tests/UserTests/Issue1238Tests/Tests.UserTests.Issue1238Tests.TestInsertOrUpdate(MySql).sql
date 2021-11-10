BeforeExecute
-- MySql MySql.Official MySql

DELETE `t1`
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`InheritanceParent` `t1`

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`InheritanceParent` `t1`

