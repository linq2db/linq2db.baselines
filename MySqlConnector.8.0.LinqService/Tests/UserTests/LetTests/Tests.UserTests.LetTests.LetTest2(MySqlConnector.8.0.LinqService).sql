BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Table1`
(
	`Field3` INT NOT NULL,
	`Field5` INT     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Table2`
(
	`Field6` INT     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table3`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Table3`
(
	`Field6` INT     NULL,
	`Field3` INT NOT NULL,
	`Field4` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table7`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Table7`
(
	`Field4` INT           NOT NULL,
	`Field8` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Field6`
FROM
	`Table2` `t1`
		LEFT JOIN `Table3` `a_Ref3` ON `t1`.`Field6` = `a_Ref3`.`Field6` AND `t1`.`Field6` IS NOT NULL AND `a_Ref3`.`Field6` IS NOT NULL OR `t1`.`Field6` IS NULL AND `a_Ref3`.`Field6` IS NULL
		LEFT JOIN `Table1` `a_Ref4` ON `a_Ref3`.`Field3` = `a_Ref4`.`Field3`
		LEFT JOIN `Table1` `a_Ref1` ON `a_Ref4`.`Field5` = `a_Ref1`.`Field3` AND `a_Ref4`.`Field5` IS NOT NULL
		LEFT JOIN `Table7` `a_Ref5` ON `a_Ref3`.`Field4` = `a_Ref5`.`Field4`
		INNER JOIN (`Table3` `t2`
			LEFT JOIN `Table7` `a_Ref5_1` ON `t2`.`Field4` = `a_Ref5_1`.`Field4`
			INNER JOIN `Table2` `t4` ON `t2`.`Field6` = `t4`.`Field6` AND `t2`.`Field6` IS NOT NULL AND `t4`.`Field6` IS NOT NULL OR `t2`.`Field6` IS NULL AND `t4`.`Field6` IS NULL)
		ON `a_Ref1`.`Field3` = `t2`.`Field3` AND (`a_Ref5`.`Field4` = `a_Ref5_1`.`Field4` AND `a_Ref5`.`Field4` IS NOT NULL AND `a_Ref5_1`.`Field4` IS NOT NULL OR `a_Ref5`.`Field4` IS NULL AND `a_Ref5_1`.`Field4` IS NULL) AND (`a_Ref5`.`Field8` = `a_Ref5_1`.`Field8` AND `a_Ref5`.`Field8` IS NOT NULL AND `a_Ref5_1`.`Field8` IS NOT NULL OR `a_Ref5`.`Field8` IS NULL AND `a_Ref5_1`.`Field8` IS NULL)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table7`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table3`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Table1`

