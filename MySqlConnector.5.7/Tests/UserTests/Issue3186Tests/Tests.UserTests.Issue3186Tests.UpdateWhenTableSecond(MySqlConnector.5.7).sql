-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 1

UPDATE
	`component_categories` `ctg`,
	`element_services` `ct`
		INNER JOIN `component_categories` `ctg_1` ON `ct`.`id` = `ctg_1`.`service_id`
		INNER JOIN `Components` `cm` ON `ctg_1`.`id` = `cm`.`category_id` AND NOT `cm`.`is_deleted`
SET
	`ctg`.`is_deleted` = @is_deleted
WHERE
	`ct`.`id` = 'TestProcessService' AND `ctg`.`id` = `ctg_1`.`id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	`x`.`is_deleted` AND `x`.`service_id` = 'TestProcessService'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	NOT `x`.`is_deleted` AND `x`.`service_id` <> 'TestProcessService'

