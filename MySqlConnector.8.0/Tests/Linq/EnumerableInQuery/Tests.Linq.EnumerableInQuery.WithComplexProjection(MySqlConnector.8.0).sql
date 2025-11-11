-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`it_1`.`cond`,
	`it_1`.`ColorName`,
	`it_1`.`StyleName`,
	`it_1`.`Count_1`,
	`it_1`.`Conditional`,
	`it_1`.`field1`,
	`it_1`.`field2`,
	`it_1`.`field3`
FROM
	`SomeItem` `t3`
		LEFT JOIN `SomeColor` `a_Color` ON `t3`.`ColorId` = `a_Color`.`Id`
		LEFT JOIN `SomeStyle` `a_Style` ON `t3`.`StyleId` = `a_Style`.`Id`
		LEFT JOIN (
			SELECT
				COUNT(*) as `Count_1`
			FROM
				`SomeItem` `t1`
		) `t2` ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				`it`.`ColorName`,
				`it`.`Count` as `Count_1`,
				`it`.`StyleName`,
				`it`.`Conditional`,
				`it`.`field1`,
				`it`.`field2`,
				`it`.`field3`,
				1 as `cond`
			FROM
				(
					SELECT `a_Color`.`Name` AS `ColorName`, `t2`.`Count_1` AS `Count`, `a_Style`.`Name` AS `StyleName`, CASE
					WHEN `a_Color`.`Name` = 'Red' THEN `t2`.`Count_1`
					ELSE 0
				END AS `Conditional`, 1 AS `field1`, 2 AS `field2`, 3 AS `field3`
					UNION ALL
					SELECT NULL, 0, `a_Style`.`Name`, NULL, 4, 5, 6) `it`
		) `it_1` ON 1=1
WHERE
	`it_1`.`ColorName` = 'Red' OR `it_1`.`Count_1` = 0

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ColorId`,
	`t1`.`StyleId`
FROM
	`SomeItem` `t1`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT DISTINCT
	`it`.`Conditional`
FROM
	`SomeItem` `t3`
		LEFT JOIN `SomeColor` `a_Color` ON `t3`.`ColorId` = `a_Color`.`Id`
		LEFT JOIN (
			SELECT
				COUNT(*) as `Count_1`
			FROM
				`SomeItem` `t1`
		) `t2` ON 1=1
		LEFT JOIN LATERAL (
			SELECT `a_Color`.`Name` AS `ColorName`, `t2`.`Count_1` AS `Count`, CASE
			WHEN `a_Color`.`Name` = 'Red' THEN `t2`.`Count_1`
			ELSE 0
		END AS `Conditional`
			UNION ALL
			SELECT NULL, 0, NULL) `it` ON 1=1
WHERE
	`it`.`ColorName` = 'Red' OR `it`.`Count` = 0

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`ColorId`,
	`t1`.`StyleId`
FROM
	`SomeItem` `t1`

