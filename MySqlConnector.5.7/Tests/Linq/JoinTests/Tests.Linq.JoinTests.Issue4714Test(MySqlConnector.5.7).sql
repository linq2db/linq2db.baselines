BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Sample`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Sample`
(
	`SampleId` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Source`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Source`
(
	`Key1` INT NOT NULL,
	`Key2` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SelectionMap`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `SelectionMap`
(
	`Key1`              INT             NOT NULL,
	`Key2`              INT             NOT NULL,
	`SelectionProperty` DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `YearMap`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `YearMap`
(
	`StartDate` DATETIME NOT NULL,
	`EndDate`   DATETIME NOT NULL,
	`Year`      INT      NOT NULL
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`source_2`.`Id`,
	`year_1`.`Year`,
	`year_1`.`StartDate`,
	`year_1`.`EndDate`
FROM
	`YearMap` `year_1`
		CROSS JOIN (
			SELECT
				`entity`.`SampleId` as `Id`
			FROM
				`Source` `source_1`
					INNER JOIN `SelectionMap` `map_1` ON `source_1`.`Key1` = `map_1`.`Key1` AND `source_1`.`Key2` = `map_1`.`Key2`,
				`Sample` `entity`
		) `source_2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `YearMap`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `SelectionMap`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Source`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Sample`

