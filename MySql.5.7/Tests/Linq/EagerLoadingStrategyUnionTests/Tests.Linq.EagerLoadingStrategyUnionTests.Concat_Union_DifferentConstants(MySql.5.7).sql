-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CAST('Small' AS CHAR(255)),
	`c_1`.`Id`,
	`c_1`.`Name`
FROM
	`Company` `c_1`
UNION ALL
SELECT
	CAST('Large' AS CHAR(255)),
	`c_2`.`Id`,
	`c_2`.`Name`
FROM
	`Company` `c_2`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN `Department` `d` ON `k_1`.`item` = `d`.`CompanyId`
ORDER BY
	`d`.`Id`

