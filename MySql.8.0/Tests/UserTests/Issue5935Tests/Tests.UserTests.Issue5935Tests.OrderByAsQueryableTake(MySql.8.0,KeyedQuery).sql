-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`Item` `i`
ORDER BY
	`i`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`k_1`.`item`,
	`d_1`.`Id`,
	`d_1`.`ItemId`,
	`d_1`.`Log`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2) `k_1`
		INNER JOIN LATERAL (
			SELECT
				`d`.`Id`,
				`d`.`ItemId`,
				`d`.`Log`
			FROM
				`ItemLog` `d`
			WHERE
				`k_1`.`item` = `d`.`ItemId`
			ORDER BY
				`d`.`Id` DESC
			LIMIT 2
		) `d_1` ON 1=1

