-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`c_1`.`Id`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`
LIMIT @skip, @take

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`CompanyId`,
	`d`.`Name`,
	`d`.`IsActive`
FROM
	(
		SELECT 2 AS `item`
		UNION ALL
		SELECT 3) `k_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	(
		SELECT
			`c_1`.`Id`
		FROM
			`Company` `c_1`
		ORDER BY
			`c_1`.`Id`
		LIMIT 1
	) as `First_1`

