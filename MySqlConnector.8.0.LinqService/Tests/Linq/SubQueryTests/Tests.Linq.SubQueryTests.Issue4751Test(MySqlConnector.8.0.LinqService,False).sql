BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Tdm100`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Tdm100`
(
	`Id`          INT         NOT NULL,
	`CarSelf`     VARCHAR(10)     NULL,
	`CarNo`       VARCHAR(10)     NULL,
	`CarBrand`    VARCHAR(10)     NULL,
	`RateWgt`     VARCHAR(10)     NULL,
	`MastLeve`    VARCHAR(10)     NULL,
	`ForkPole`    VARCHAR(10)     NULL,
	`ForkPoleLen` VARCHAR(10)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Trp004`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Trp004`
(
	`Id`              INT         NOT NULL,
	`CarNo`           VARCHAR(10)     NULL,
	`RuleNo`          VARCHAR(10)     NULL,
	`LastWorkVal`     VARCHAR(10)     NULL,
	`LastDate`        VARCHAR(10)     NULL,
	`RealLastWorkVal` VARCHAR(10)     NULL,
	`RealLastDate`    VARCHAR(10)     NULL,
	`Status`          VARCHAR(10)     NULL,
	`TelNo`           VARCHAR(10)     NULL,
	`RecCreator`      VARCHAR(10)     NULL,
	`RecCreateTime`   VARCHAR(10)     NULL,
	`RecRevisor`      VARCHAR(10)     NULL,
	`RecReviseTime`   VARCHAR(10)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Trp003`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Trp003`
(
	`Id`       INT         NOT NULL,
	`RuleNo`   VARCHAR(10)     NULL,
	`RuleName` VARCHAR(10)     NULL,
	`RuleType` VARCHAR(10)     NULL,
	`RuleVal`  VARCHAR(10)     NULL,
	`RuleUnit` VARCHAR(10)     NULL,
	`Remark`   VARCHAR(10)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Trp0041`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Trp0041`
(
	`Id`       INT         NOT NULL,
	`CarNo`    VARCHAR(10)     NULL,
	`FirstVal` VARCHAR(10)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @carNo VarChar(1) -- String
SET     @carNo = '1'
DECLARE @carBrand VarChar(4) -- String
SET     @carBrand = 'test'
DECLARE @skip Int32
SET     @skip = 20
DECLARE @take Int32
SET     @take = 10

SELECT
	`t_1`.`Id`,
	`t_1`.`CarNo`,
	`t_1`.`CarSelf`,
	`t_1`.`CarBrand`,
	`t_1`.`RateWgt`,
	`t_1`.`MastLeve`,
	`t_1`.`ForkPole`,
	`t_1`.`FirstVal`,
	`t_1`.`TelNo`,
	`t_1`.`RuleNo`,
	`t_1`.`RuleName`,
	`t_1`.`RuleType`,
	`t_1`.`RuleVal`,
	`t_1`.`RuleUnit`,
	`t_1`.`RecCreator`,
	`t_1`.`RecCreateTime`,
	`t_1`.`RecRevisor`,
	`t_1`.`RecReviseTime`
FROM
	(
		SELECT
			`t2`.`RuleNo`,
			`t`.`CarNo`,
			`t`.`CarBrand`,
			`t`.`Id`,
			`t`.`CarSelf`,
			`t`.`RateWgt`,
			`t`.`MastLeve`,
			`t`.`ForkPole`,
			`t4`.`FirstVal`,
			`t2`.`TelNo`,
			`t3`.`RuleName`,
			`t3`.`RuleType`,
			`t3`.`RuleVal`,
			`t3`.`RuleUnit`,
			`t2`.`RecCreator`,
			`t2`.`RecCreateTime`,
			`t2`.`RecRevisor`,
			`t2`.`RecReviseTime`
		FROM
			`Tdm100` `t`
				LEFT JOIN `Trp004` `t2` ON `t2`.`CarNo` = `t`.`CarNo` OR `t2`.`CarNo` IS NULL AND `t`.`CarNo` IS NULL
				LEFT JOIN `Trp003` `t3` ON `t3`.`RuleNo` = `t2`.`RuleNo` OR `t3`.`RuleNo` IS NULL AND `t2`.`RuleNo` IS NULL
				LEFT JOIN `Trp0041` `t4` ON `t4`.`CarNo` = `t`.`CarNo` OR `t4`.`CarNo` IS NULL AND `t`.`CarNo` IS NULL
	) `t_1`
WHERE
	`t_1`.`RuleNo` IS NULL AND LOCATE(@carNo, `t_1`.`CarNo`) > 0 AND
	LOCATE(@carBrand, `t_1`.`CarBrand`) > 0
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @carNo VarChar(1) -- String
SET     @carNo = '1'
DECLARE @carBrand VarChar(4) -- String
SET     @carBrand = 'test'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t2`.`RuleNo`,
			`t`.`CarNo`,
			`t`.`CarBrand`
		FROM
			`Tdm100` `t`
				LEFT JOIN `Trp004` `t2` ON `t2`.`CarNo` = `t`.`CarNo` OR `t2`.`CarNo` IS NULL AND `t`.`CarNo` IS NULL
				LEFT JOIN `Trp003` `t3` ON `t3`.`RuleNo` = `t2`.`RuleNo` OR `t3`.`RuleNo` IS NULL AND `t2`.`RuleNo` IS NULL
				LEFT JOIN `Trp0041` `t4` ON `t4`.`CarNo` = `t`.`CarNo` OR `t4`.`CarNo` IS NULL AND `t`.`CarNo` IS NULL
	) `t1`
WHERE
	`t1`.`RuleNo` IS NULL AND LOCATE(@carNo, `t1`.`CarNo`) > 0 AND
	LOCATE(@carBrand, `t1`.`CarBrand`) > 0

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Trp0041`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Trp003`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Trp004`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Tdm100`

