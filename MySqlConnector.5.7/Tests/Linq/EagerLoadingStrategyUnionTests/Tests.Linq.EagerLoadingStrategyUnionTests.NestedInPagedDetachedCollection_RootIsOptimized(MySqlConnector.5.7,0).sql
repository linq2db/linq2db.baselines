-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 2

SELECT
	`c_1`.`Id`
FROM
	`Company` `c_1`
ORDER BY
	`c_1`.`Id`
LIMIT @skip, @take

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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
		SELECT 2) `k_1`
		INNER JOIN `Department` `d` ON `d`.`CompanyId` = `k_1`.`item`
ORDER BY
	`d`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

