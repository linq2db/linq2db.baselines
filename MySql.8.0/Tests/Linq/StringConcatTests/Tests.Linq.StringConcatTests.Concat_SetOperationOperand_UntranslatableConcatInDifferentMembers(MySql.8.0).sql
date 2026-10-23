-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST('p_' AS CHAR(255)),
	`e`.`Id`,
	CAST('N' AS CHAR(255)),
	CAST(NULL AS CHAR(36)),
	CAST(NULL AS CHAR(255)),
	`e`.`Name`,
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS CHAR(255)),
	CAST(NULL AS CHAR(36)),
	CAST(NULL AS CHAR(255))
FROM
	`ConcatSetOpEntity` `e`
WHERE
	`e`.`ParentId` IS NULL
UNION ALL
SELECT
	NULL,
	CAST(NULL AS CHAR(36)),
	NULL,
	`e_1`.`Id`,
	CAST('N' AS CHAR(255)),
	`e_1`.`Name`,
	NULL,
	CAST('p_' AS CHAR(255)),
	`e_1`.`ParentId`,
	CAST('N' AS CHAR(255))
FROM
	`ConcatSetOpEntity` `e_1`
WHERE
	`e_1`.`ParentId` IS NOT NULL

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`Id`,
	`t1`.`ParentId`,
	`t1`.`Name`
FROM
	`ConcatSetOpEntity` `t1`

