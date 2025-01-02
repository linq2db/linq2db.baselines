BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SomeItem`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `SomeItem`
(
	`Id`      INT NOT NULL,
	`ColorId` INT     NULL,
	`StyleId` INT     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `SomeItem`
(
	`Id`,
	`ColorId`,
	`StyleId`
)
VALUES
(1,1,1),
(2,2,2),
(3,3,3),
(4,1,2),
(5,2,3),
(6,NULL,1),
(7,3,NULL),
(8,NULL,NULL)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SomeColor`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `SomeColor`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `SomeColor`
(
	`Id`,
	`Name`
)
VALUES
(1,'Red'),
(2,'Green'),
(3,'Blue')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SomeStyle`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `SomeStyle`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `SomeStyle`
(
	`Id`,
	`Name`
)
VALUES
(1,'Bold'),
(2,'Italic'),
(3,'Underline')

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`it_1`.`cond`,
	`it_1`.`ColorName`,
	`it_1`.`StyleName`
FROM
	`SomeItem` `t1`
		LEFT JOIN `SomeColor` `a_Color` ON `t1`.`ColorId` = `a_Color`.`Id`
		LEFT JOIN `SomeStyle` `a_Style` ON `t1`.`StyleId` = `a_Style`.`Id`
		LEFT JOIN LATERAL (
			SELECT
				`it`.`ColorName`,
				`it`.`StyleName`,
				1 as `cond`
			FROM
				(
					SELECT `a_Color`.`Name` AS `ColorName`, `a_Style`.`Name` AS `StyleName`
					UNION ALL
					SELECT NULL, `a_Style`.`Name`) `it`
		) `it_1` ON 1=1
WHERE
	`it_1`.`ColorName` = 'Red'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ColorId`,
	`t1`.`StyleId`,
	`a_Color`.`Id`,
	`a_Color`.`Name`,
	`a_Style`.`Id`,
	`a_Style`.`Name`
FROM
	`SomeItem` `t1`
		LEFT JOIN `SomeColor` `a_Color` ON `t1`.`ColorId` = `a_Color`.`Id`
		LEFT JOIN `SomeStyle` `a_Style` ON `t1`.`StyleId` = `a_Style`.`Id`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SomeStyle`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SomeColor`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SomeItem`

