-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`m_1`.`Id`,
	`d`.`Log`
FROM
	`EagerOrderItem` `m_1`
		INNER JOIN `EagerOrderItemLog` `d` ON `m_1`.`Id` = `d`.`ItemId`
ORDER BY
	`d`.`ItemId`,
	`d`.`Id` DESC,
	`m_1`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`EagerOrderItem` `i`
ORDER BY
	`i`.`Id`

