-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @is_deleted UByte -- Boolean
SET     @is_deleted = 1

UPDATE
	`ComponentCategoryRow` `ct`
		INNER JOIN `ElementServiceRow` `sr` ON `sr`.`id` = `ct`.`service_id`
		LEFT JOIN `ComponentRow` `cm` ON `ct`.`id` = `cm`.`category_id` AND NOT `cm`.`is_deleted`
SET
	`ct`.`is_deleted` = @is_deleted
WHERE
	`sr`.`id` = 'TestProcessService'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`ComponentCategoryRow` `x`
WHERE
	`x`.`is_deleted` AND `x`.`service_id` = 'TestProcessService'

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`ComponentCategoryRow` `x`
WHERE
	NOT `x`.`is_deleted` AND `x`.`service_id` <> 'TestProcessService'

