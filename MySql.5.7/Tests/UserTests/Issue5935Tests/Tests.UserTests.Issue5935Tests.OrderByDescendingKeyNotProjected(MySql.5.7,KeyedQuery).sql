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
	`l`.`ItemId`,
	`l`.`Log`
FROM
	`ItemLog` `l`
WHERE
	`l`.`ItemId` IN (1, 2)
ORDER BY
	`l`.`Id` DESC

