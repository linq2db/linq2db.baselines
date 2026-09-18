-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`Item` `i`
ORDER BY
	`i`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`k_1`.`item`,
	`a_Tags`.`Id`,
	`a_Tags`.`LogId`,
	`a_Tags`.`Name`
FROM
	(
		SELECT 1 AS `item`
		UNION ALL
		SELECT 2) `k_1`
		INNER JOIN `ItemLog` `d` ON `k_1`.`item` = `d`.`ItemId`
		INNER JOIN `ItemTag` `a_Tags` ON `d`.`Id` = `a_Tags`.`LogId`
ORDER BY
	`d`.`Id`

