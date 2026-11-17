-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN `error`.`c1` OR `error`.`c2` THEN 5
		ELSE 3
	END,
	CASE
		WHEN `error`.`c1` OR `error`.`c2` THEN 'bad'
		ELSE NULL
	END
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`
		LEFT JOIN LATERAL (
			SELECT
				`c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1 as `c1`,
				NOT `p`.`Value1` <=> `c_1`.`ParentID` as `c2`
		) `error` ON 1=1
WHERE
	`c_1`.`ParentID` = `p`.`ParentID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NULL as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NULL as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NULL as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`c_1`.`ChildID`,
	CASE
		WHEN `c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1 OR NOT `p`.`Value1` <=> `c_1`.`ParentID`
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN `c_1`.`ChildID` <> `p`.`ParentID` * 10 + 1 OR NOT `p`.`Value1` <=> `c_1`.`ParentID`
			THEN 'bad'
		ELSE NULL
	END
FROM
	`Parent` `p`,
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = `p`.`ParentID`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NULL as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NULL as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	NULL as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	'bad' as `c1`

