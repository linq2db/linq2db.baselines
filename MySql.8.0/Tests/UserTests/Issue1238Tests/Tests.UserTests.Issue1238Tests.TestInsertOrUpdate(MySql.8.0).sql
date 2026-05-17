-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DELETE  
FROM
	`InheritanceParent`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`InheritanceParent` `t1`

