﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `element_services`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `element_services`
(
	`id`                 VARCHAR(100) NOT NULL,
	`is_process_service` BOOLEAN      NOT NULL,
	`is_deleted`         BOOLEAN      NOT NULL,

	CONSTRAINT `PK_element_services` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `element_services`
(
	`id`,
	`is_process_service`,
	`is_deleted`
)
VALUES
('TestProcessService',1,0),
('TestElementService',0,0)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `component_categories`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `component_categories`
(
	`id`         VARCHAR(100) NOT NULL,
	`service_id` VARCHAR(100) NOT NULL,
	`is_deleted` BOOLEAN      NOT NULL,

	CONSTRAINT `PK_component_categories` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `component_categories`
(
	`id`,
	`service_id`,
	`is_deleted`
)
VALUES
('TestProcessCategory1','TestProcessService',0),
('TestProcessCategory2','TestProcessService',0),
('TestElementCategory1','TestElementService',0),
('TestElementCategory2','TestElementService',0)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Components`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Components`
(
	`id`          VARCHAR(100) NOT NULL,
	`category_id` VARCHAR(100) NOT NULL,
	`service_id`  VARCHAR(100) NOT NULL,
	`is_deleted`  BOOLEAN      NOT NULL,

	CONSTRAINT `PK_Components` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `Components`
(
	`id`,
	`category_id`,
	`service_id`,
	`is_deleted`
)
VALUES
('TestProcessComponent1','TestProcessCategory1','TestProcessService',0),
('TestProcessComponent2','TestProcessCategory2','TestProcessService',0),
('TestElementComponent1','TestElementCategory1','TestElementService',0),
('TestElementComponent2','TestElementCategory2','TestElementService',0)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @is_deleted UByte -- Boolean
SET     @is_deleted = 1

UPDATE
	`component_categories` `ctg`
		INNER JOIN `element_services` `ie` ON `ie`.`id` = `ctg`.`service_id`
		LEFT JOIN `Components` `cm` ON `ctg`.`id` = `cm`.`category_id` AND `cm`.`is_deleted` = 0
SET
	`ctg`.`is_deleted` = @is_deleted
WHERE
	`ie`.`id` = 'TestProcessService'

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	`x`.`is_deleted` = 1 AND `x`.`service_id` = 'TestProcessService'

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	`x`.`is_deleted` = 0 AND `x`.`service_id` <> 'TestProcessService'

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `Components`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `component_categories`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `element_services`

