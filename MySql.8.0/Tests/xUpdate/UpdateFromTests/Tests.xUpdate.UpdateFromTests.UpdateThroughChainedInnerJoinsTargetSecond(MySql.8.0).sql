-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @is_deleted UByte -- Boolean
SET     @is_deleted = 1

UPDATE
	`ComponentCategoryRow` `ctg`,
	`ElementServiceRow` `ct`
		INNER JOIN `ComponentCategoryRow` `ctg_1` ON `ct`.`id` = `ctg_1`.`service_id`
		INNER JOIN `ComponentRow` `cm` ON `ctg_1`.`id` = `cm`.`category_id` AND NOT `cm`.`is_deleted`
SET
	`ctg`.`is_deleted` = @is_deleted
WHERE
	`ct`.`id` = 'TestProcessService' AND `ctg`.`id` = `ctg_1`.`id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`ComponentCategoryRow` `x`
WHERE
	`x`.`is_deleted` AND `x`.`service_id` = 'TestProcessService'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`ComponentCategoryRow` `x`
WHERE
	NOT `x`.`is_deleted` AND `x`.`service_id` <> 'TestProcessService'

