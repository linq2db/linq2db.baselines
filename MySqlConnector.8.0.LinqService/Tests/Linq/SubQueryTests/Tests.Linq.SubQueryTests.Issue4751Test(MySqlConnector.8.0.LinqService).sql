﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @carNo VarChar -- String
SET     @carNo = NULL
DECLARE @carBrand VarChar -- String
SET     @carBrand = NULL
DECLARE @skip Int32
SET     @skip = 20
DECLARE @take Int32
SET     @take = 10

SELECT
	`x`.`Id`,
	`x`.`CarNo`,
	`x`.`CarSelf`,
	`x`.`CarBrand`,
	`x`.`RateWgt`,
	`x`.`MastLeve`,
	`x`.`ForkPole`,
	`x`.`FirstVal`,
	`x`.`TelNo`,
	`x`.`RuleNo`,
	`x`.`RuleName`,
	`x`.`RuleType`,
	`x`.`RuleVal`,
	`x`.`RuleUnit`,
	`x`.`RecCreator`,
	`x`.`RecCreateTime`,
	`x`.`RecRevisor`,
	`x`.`RecReviseTime`
FROM
	(
		SELECT
			`t`.`CarNo`,
			`t`.`CarBrand`,
			`t`.`Id`,
			`t`.`CarSelf`,
			`t`.`RateWgt`,
			`t`.`MastLeve`,
			`t`.`ForkPole`,
			`t4`.`FirstVal`,
			`t2`.`TelNo`,
			`t2`.`RuleNo`,
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
	) `x`
WHERE
	LOCATE(@carNo, `x`.`CarNo`) > 0 AND LOCATE(@carBrand, `x`.`CarBrand`) > 0
LIMIT @skip, @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @carNo VarChar -- String
SET     @carNo = NULL
DECLARE @carBrand VarChar -- String
SET     @carBrand = NULL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t`.`CarNo`,
			`t`.`CarBrand`
		FROM
			`Tdm100` `t`
				LEFT JOIN `Trp004` `t2` ON `t2`.`CarNo` = `t`.`CarNo` OR `t2`.`CarNo` IS NULL AND `t`.`CarNo` IS NULL
				LEFT JOIN `Trp003` `t3` ON `t3`.`RuleNo` = `t2`.`RuleNo` OR `t3`.`RuleNo` IS NULL AND `t2`.`RuleNo` IS NULL
				LEFT JOIN `Trp0041` `t4` ON `t4`.`CarNo` = `t`.`CarNo` OR `t4`.`CarNo` IS NULL AND `t`.`CarNo` IS NULL
	) `t1`
WHERE
	LOCATE(@carNo, `t1`.`CarNo`) > 0 AND LOCATE(@carBrand, `t1`.`CarBrand`) > 0

