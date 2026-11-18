-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`c_1`.`Id`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`k_1`.`item`,
	`d_1`.`Id`,
	`d_1`.`CompanyId`,
	`d_1`.`Name`,
	`d_1`.`IsActive`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN LATERAL (
			SELECT
				`d`.`Id`,
				`d`.`CompanyId`,
				`d`.`Name`,
				`d`.`IsActive`
			FROM
				`Department` `d`
			WHERE
				`d`.`CompanyId` = `k_1`.`item`
			ORDER BY
				`d`.`Id`
			LIMIT 2
		) `d_1` ON 1=1

