﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityA`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityA`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityA` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityA`
(
	`Id`,
	`FK`
)
VALUES
(10,20),
(11,21),
(12,22),
(13,20),
(14,NULL),
(15,NULL),
(16,25),
(17,26),
(18,29)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityB`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityB`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityB`
(
	`Id`,
	`FK`
)
VALUES
(20,30),
(21,31),
(22,30),
(23,31),
(24,31),
(25,NULL),
(26,NULL),
(27,NULL),
(28,39)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityC`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityC`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityC` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityC`
(
	`Id`,
	`FK`
)
VALUES
(30,NULL),
(31,NULL),
(32,NULL),
(33,NULL),
(34,NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityD`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityD`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityD` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityD`
(
	`Id`,
	`FK`
)
VALUES
(40,20),
(41,21),
(42,21),
(43,21),
(44,25),
(45,26),
(46,26),
(47,NULL),
(48,NULL),
(401,29)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`e`.`Id`,
	`a_ObjectBOptional`.`Id`,
	`a_ObjectBOptional`.`Id`,
	`a_ObjectC`.`Id`,
	`a_ObjectC`.`FK`
FROM
	`EntityA` `e`
		LEFT JOIN `EntityB` `a_ObjectBOptional` ON `e`.`FK` = `a_ObjectBOptional`.`Id`
		LEFT JOIN `EntityC` `a_ObjectC` ON `a_ObjectBOptional`.`FK` = `a_ObjectC`.`Id`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityD`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityC`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityB`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityA`

