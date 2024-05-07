BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PUMPLINES`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PUMPLINES`
(
	`LINE_ID` INT NOT NULL,

	CONSTRAINT `PK_PUMPLINES` PRIMARY KEY CLUSTERED (`LINE_ID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `PUMPLINES`
(
	`LINE_ID`
)
VALUES
(1),
(2)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PUMPLINE_CHAINS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `PUMPLINE_CHAINS`
(
	`LINE_ID`  INT NOT NULL,
	`CHAIN_ID` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `PUMPLINE_CHAINS`
(
	`LINE_ID`,
	`CHAIN_ID`
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CHAINS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CHAINS`
(
	`CHAIN_ID` INT NOT NULL,

	CONSTRAINT `PK_CHAINS` PRIMARY KEY CLUSTERED (`CHAIN_ID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `CHAINS`
(
	`CHAIN_ID`
)
VALUES
(11),
(22)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CHAINPOINTS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `CHAINPOINTS`
(
	`CHAIN_ID` INT NOT NULL,

	CONSTRAINT `PK_CHAINPOINTS` PRIMARY KEY CLUSTERED (`CHAIN_ID`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `CHAINPOINTS`
(
	`CHAIN_ID`
)
VALUES
(11),
(22)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`m_1`.`Id_1`,
	`d_1`.`CHAIN_ID`
FROM
	(
		SELECT DISTINCT
			`a_Chain`.`CHAIN_ID` as `Id`,
			`t2`.`Id` as `Id_1`
		FROM
			(
				SELECT DISTINCT
					`t1`.`LINE_ID` as `Id`
				FROM
					`PUMPLINES` `t1`
			) `t2`
				INNER JOIN `PUMPLINE_CHAINS` `d` ON `t2`.`Id` = `d`.`LINE_ID`
				LEFT JOIN `CHAINS` `a_Chain` ON `d`.`CHAIN_ID` = `a_Chain`.`CHAIN_ID`
	) `m_1`
		INNER JOIN `CHAINPOINTS` `d_1` ON `m_1`.`Id` = `d_1`.`CHAIN_ID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`LINE_ID`,
	`d`.`LINE_ID`,
	`d`.`CHAIN_ID`,
	`a_Chain`.`CHAIN_ID`
FROM
	`PUMPLINES` `m_1`
		INNER JOIN `PUMPLINE_CHAINS` `d` ON `m_1`.`LINE_ID` = `d`.`LINE_ID`
		LEFT JOIN `CHAINS` `a_Chain` ON `d`.`CHAIN_ID` = `a_Chain`.`CHAIN_ID`
ORDER BY
	`m_1`.`LINE_ID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`LINE_ID`
FROM
	`PUMPLINES` `t1`
ORDER BY
	`t1`.`LINE_ID`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CHAINPOINTS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `CHAINS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PUMPLINE_CHAINS`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `PUMPLINES`

