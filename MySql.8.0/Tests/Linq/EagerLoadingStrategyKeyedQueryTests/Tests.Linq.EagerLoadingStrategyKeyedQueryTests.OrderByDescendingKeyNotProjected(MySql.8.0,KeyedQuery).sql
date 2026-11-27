-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`i`.`Value`,
	`i`.`Id`
FROM
	`EagerOrderItem` `i`
ORDER BY
	`i`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`l`.`ItemId`,
	`l`.`Log`
FROM
	`EagerOrderItemLog` `l`
WHERE
	`l`.`ItemId` IN (1, 2)
ORDER BY
	`l`.`Id` DESC

