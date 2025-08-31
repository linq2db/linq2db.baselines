BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`StartDateTime`,
	`x`.`StartDateTime2`,
	`x`.`EndDateTime`,
	`x`.`PreNotification`,
	`x`.`PreNotification2`,
	`x`.`PreNotification3`,
	`x`.`StrField`,
	`x`.`Status`
FROM
	`Common_Topology_Locations` `x`
WHERE
	Extract(hour from `x`.`StartDateTime`) = 13
LIMIT 1

