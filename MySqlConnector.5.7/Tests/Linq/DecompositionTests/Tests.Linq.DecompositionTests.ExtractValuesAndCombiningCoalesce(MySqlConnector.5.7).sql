-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Kind` = 1 OR `t`.`Kind` = 2,
	`t`.`Kind`,
	Substring(`t`.`ItemCode`, 1, 2),
	`t`.`Color`,
	Substring(`t`.`ItemCode`, 3, 2),
	`t`.`Style`,
	`t`.`Kind` = 1 OR `t`.`Kind` = 3,
	Substring(`t`.`ItemCode`, 5, 2),
	Substring(`t`.`ItemCode`, 7, 2)
FROM
	`Item` `t`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`cond_1`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode`,
	`x_1`.`Color`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Style_1`,
	`x_1`.`cond_3`,
	`x_1`.`ItemCode_1`,
	`x_1`.`ItemCode_3`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond_1`,
			`x`.`Kind` = 1 as `cond_2`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode`,
			`x`.`Color`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `cond_3`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode_2`,
			`x`.`Style` as `Style_1`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	NOT (`x_1`.`cond` AND (`x_1`.`cond_1` AND `x_1`.`cond_2` OR NOT `x_1`.`cond_1`) OR NOT `x_1`.`cond` AND NOT `x_1`.`cond_3`)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`cond_1`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode`,
	`x_1`.`Color`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Style_1`,
	`x_1`.`cond_3`,
	`x_1`.`ItemCode_1`,
	`x_1`.`ItemCode_3`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond_1`,
			`x`.`Kind` = 1 as `cond_2`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode`,
			`x`.`Color`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `cond_3`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode_2`,
			`x`.`Style` as `Style_1`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	`x_1`.`cond` AND (`x_1`.`cond_1` AND `x_1`.`cond_2` OR NOT `x_1`.`cond_1`) OR
	NOT `x_1`.`cond` AND NOT `x_1`.`cond_3`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`cond_1`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Color`,
	`x_1`.`ItemCode`,
	`x_1`.`Style_1`,
	`x_1`.`cond_2`,
	`x_1`.`ItemCode_3`,
	`x_1`.`ItemCode_1`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond_1`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode`,
			`x`.`Style` as `Style_1`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `cond_2`,
			`x`.`Kind` = 1 as `cond_3`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode_2`,
			`x`.`Color`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	NOT (NOT `x_1`.`cond` AND (`x_1`.`cond_2` AND `x_1`.`cond_3` OR NOT `x_1`.`cond_2`))

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`cond_1`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Color`,
	`x_1`.`ItemCode`,
	`x_1`.`Style_1`,
	`x_1`.`cond_2`,
	`x_1`.`ItemCode_3`,
	`x_1`.`ItemCode_1`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `cond_1`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode`,
			`x`.`Style` as `Style_1`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `cond_2`,
			`x`.`Kind` = 1 as `cond_3`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode_2`,
			`x`.`Color`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	NOT `x_1`.`cond` AND (`x_1`.`cond_2` AND `x_1`.`cond_3` OR NOT `x_1`.`cond_2`)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

