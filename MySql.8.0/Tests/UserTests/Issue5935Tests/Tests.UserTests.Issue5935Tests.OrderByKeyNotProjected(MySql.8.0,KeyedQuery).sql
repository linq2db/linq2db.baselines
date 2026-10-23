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
	`l`.`ItemId`,
	`l`.`Log`
FROM
	`ItemLog` `l`
WHERE
	`l`.`ItemId` IN (1, 2)
ORDER BY
	`l`.`Id`

