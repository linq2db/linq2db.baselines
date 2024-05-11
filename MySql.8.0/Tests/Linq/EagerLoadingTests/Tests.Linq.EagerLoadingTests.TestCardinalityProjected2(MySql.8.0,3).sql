BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMA`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `EntityMA`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityMA` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMB`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `EntityMB`
(
	`Id`  INT NOT NULL,
	`FK`  INT     NULL,
	`FKD` INT     NULL,

	CONSTRAINT `PK_EntityMB` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMC`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `EntityMC`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityMC` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMD`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `EntityMD`
(
	`Id` INT NOT NULL,
	`FK` INT     NULL,

	CONSTRAINT `PK_EntityMD` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`m_1`.`Id_1`,
	`d_1`.`Id`,
	`d_1`.`FK`
FROM
	(
		SELECT DISTINCT
			`d`.`Id`,
			`t1`.`Id` as `Id_1`
		FROM
			(
				SELECT DISTINCT
					`e`.`Id`
				FROM
					`EntityMA` `e`
			) `t1`
				INNER JOIN `EntityMB` `d` ON `t1`.`Id` = `d`.`FK`
	) `m_1`
		INNER JOIN `EntityMC` `d_1` ON `m_1`.`Id` = `d_1`.`FK`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`a_ObjectD`.`Id`,
	`a_ObjectD`.`FK`
FROM
	`EntityMA` `m_1`
		INNER JOIN `EntityMB` `d` ON `m_1`.`Id` = `d`.`FK`
		LEFT JOIN `EntityMD` `a_ObjectD` ON `d`.`FKD` = `a_ObjectD`.`Id`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`e`.`Id`
FROM
	`EntityMA` `e`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMD`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMC`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMB`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `EntityMA`

