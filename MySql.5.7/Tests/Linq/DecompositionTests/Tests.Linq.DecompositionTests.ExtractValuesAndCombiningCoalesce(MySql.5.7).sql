-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`Color_1`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode`,
	`x_1`.`Color_3`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Style_1`,
	`x_1`.`Color_4`,
	`x_1`.`ItemCode_1`,
	`x_1`.`ItemCode_3`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Color`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Color_1`,
			`x`.`Kind` = 1 as `Color_2`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode`,
			`x`.`Color` as `Color_3`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `Color_4`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode_2`,
			`x`.`Style` as `Style_1`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	NOT (`x_1`.`Color` AND (`x_1`.`Color_1` AND `x_1`.`Color_2` OR NOT `x_1`.`Color_1`) OR NOT `x_1`.`Color` AND NOT `x_1`.`Color_4`)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`Color_1`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode`,
	`x_1`.`Color_3`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Style_1`,
	`x_1`.`Color_4`,
	`x_1`.`ItemCode_1`,
	`x_1`.`ItemCode_3`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Color`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Color_1`,
			`x`.`Kind` = 1 as `Color_2`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode`,
			`x`.`Color` as `Color_3`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `Color_4`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode_2`,
			`x`.`Style` as `Style_1`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	`x_1`.`Color` AND (`x_1`.`Color_1` AND `x_1`.`Color_2` OR NOT `x_1`.`Color_1`) OR
	NOT `x_1`.`Color` AND NOT `x_1`.`Color_4`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`Size_2`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Color`,
	`x_1`.`ItemCode`,
	`x_1`.`Style_1`,
	`x_1`.`Size_3`,
	`x_1`.`ItemCode_3`,
	`x_1`.`ItemCode_1`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Size_1`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Size_2`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode`,
			`x`.`Style` as `Style_1`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `Size_3`,
			`x`.`Kind` = 1 as `Size_4`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode_2`,
			`x`.`Color`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	NOT (NOT `x_1`.`Size_1` AND (`x_1`.`Size_3` AND `x_1`.`Size_4` OR NOT `x_1`.`Size_3`))

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x_1`.`Size_2`,
	`x_1`.`Kind`,
	`x_1`.`ItemCode_2`,
	`x_1`.`Color`,
	`x_1`.`ItemCode`,
	`x_1`.`Style_1`,
	`x_1`.`Size_3`,
	`x_1`.`ItemCode_3`,
	`x_1`.`ItemCode_1`
FROM
	(
		SELECT
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Size_1`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 2 as `Size_2`,
			Substring(`x`.`ItemCode`, 3, 2) as `ItemCode`,
			`x`.`Style` as `Style_1`,
			`x`.`Kind` = 1 OR `x`.`Kind` = 3 as `Size_3`,
			`x`.`Kind` = 1 as `Size_4`,
			Substring(`x`.`ItemCode`, 7, 2) as `ItemCode_1`,
			`x`.`Kind`,
			Substring(`x`.`ItemCode`, 1, 2) as `ItemCode_2`,
			`x`.`Color`,
			Substring(`x`.`ItemCode`, 5, 2) as `ItemCode_3`
		FROM
			`Item` `x`
	) `x_1`
WHERE
	NOT `x_1`.`Size_1` AND (`x_1`.`Size_3` AND `x_1`.`Size_4` OR NOT `x_1`.`Size_3`)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ItemId`,
	`t1`.`Kind`,
	`t1`.`ItemCode`,
	`t1`.`Style`,
	`t1`.`Color`
FROM
	`Item` `t1`

