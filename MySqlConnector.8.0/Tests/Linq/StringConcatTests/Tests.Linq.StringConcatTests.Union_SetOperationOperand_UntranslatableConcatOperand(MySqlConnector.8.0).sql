-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST('p_' AS CHAR(255)),
	`e`.`Id`,
	CAST('N' AS CHAR(255)),
	`e`.`Name`
FROM
	`ConcatSetOpEntity` `e`
WHERE
	`e`.`Name` IS NOT NULL
UNION
SELECT
	CAST('p_' AS CHAR(255)),
	`e_1`.`Id`,
	CAST('N' AS CHAR(255)),
	`e_1`.`Name`
FROM
	`ConcatSetOpEntity` `e_1`
WHERE
	`e_1`.`ParentId` IS NULL

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`ParentId`,
	`t1`.`Name`
FROM
	`ConcatSetOpEntity` `t1`

