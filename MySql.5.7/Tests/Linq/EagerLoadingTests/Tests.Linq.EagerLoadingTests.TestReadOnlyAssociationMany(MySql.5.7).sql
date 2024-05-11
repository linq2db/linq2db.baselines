BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMA`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityMA`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityMA` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityMA`
(
	`Id`,
	`FK`
)
VALUES
(10,NULL),
(11,NULL),
(12,NULL),
(13,NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMB`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityMB`
(
	`Id`  INT NOT NULL,
	`FK`  INT     NULL,
	`FKD` INT     NULL,

	CONSTRAINT `PK_EntityMB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityMB`
(
	`Id`,
	`FK`,
	`FKD`
)
VALUES
(20,10,40),
(21,11,NULL),
(22,11,40),
(23,19,49),
(24,19,NULL),
(25,NULL,49),
(26,NULL,40),
(27,19,41),
(28,10,NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMC`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityMC`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityMC` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityMC`
(
	`Id`,
	`FK`
)
VALUES
(30,20),
(31,24),
(32,21),
(33,21),
(34,23),
(35,NULL),
(36,NULL),
(37,29)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMD`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `EntityMD`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityMD` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

INSERT INTO `EntityMD`
(
	`Id`,
	`FK`
)
VALUES
(40,NULL),
(41,NULL),
(42,NULL)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMD`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMC`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMB`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `EntityMA`

