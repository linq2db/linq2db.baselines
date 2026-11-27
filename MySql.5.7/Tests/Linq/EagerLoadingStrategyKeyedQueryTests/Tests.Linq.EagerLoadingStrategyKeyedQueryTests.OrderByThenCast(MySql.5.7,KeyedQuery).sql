-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`EagerOrderItem` `i`
ORDER BY
	`i`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`k_1`.`item`,
	`d`.`Id`,
	`d`.`ItemId`,
	`d`.`Log`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2) `k_1`
		INNER JOIN `EagerOrderItemLog` `d` ON `k_1`.`item` = `d`.`ItemId`
ORDER BY
	`d`.`Id` DESC

