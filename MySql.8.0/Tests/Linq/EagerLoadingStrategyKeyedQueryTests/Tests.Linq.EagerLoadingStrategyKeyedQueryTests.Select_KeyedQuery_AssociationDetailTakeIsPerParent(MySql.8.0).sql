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
	`d_1`.`Name`
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
				`d`.`Name`
			FROM
				`Department` `d`
			WHERE
				`k_1`.`item` = `d`.`CompanyId`
			ORDER BY
				`d`.`Id`
			LIMIT 2
		) `d_1` ON 1=1

