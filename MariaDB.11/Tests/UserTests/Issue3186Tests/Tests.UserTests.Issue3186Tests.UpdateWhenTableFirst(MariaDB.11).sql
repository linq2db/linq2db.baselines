-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 1

UPDATE
	`component_categories` `ct`
		INNER JOIN `element_services` `sr` ON `sr`.`id` = `ct`.`service_id`
		INNER JOIN `Components` `cm` ON `ct`.`id` = `cm`.`category_id` AND NOT `cm`.`is_deleted`
SET
	`ct`.`is_deleted` = @is_deleted
WHERE
	`sr`.`id` = 'TestProcessService'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	`x`.`is_deleted` AND `x`.`service_id` = 'TestProcessService'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	NOT `x`.`is_deleted` AND `x`.`service_id` <> 'TestProcessService'

