BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `element_services`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `element_services`
(
	`id`                 VARCHAR(100) NOT NULL,
	`is_process_service` BOOLEAN      NOT NULL,
	`is_deleted`         BOOLEAN      NOT NULL,

	CONSTRAINT `PK_element_services` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(18) -- String
SET     @id = 'TestProcessService'
DECLARE @is_process_service Bool -- Boolean
SET     @is_process_service = 1
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `element_services`
(
	`id`,
	`is_process_service`,
	`is_deleted`
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(18) -- String
SET     @id = 'TestElementService'
DECLARE @is_process_service Bool -- Boolean
SET     @is_process_service = 0
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `element_services`
(
	`id`,
	`is_process_service`,
	`is_deleted`
)
VALUES
(
	@id,
	@is_process_service,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `component_categories`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `component_categories`
(
	`id`         VARCHAR(100) NOT NULL,
	`service_id` VARCHAR(100) NOT NULL,
	`is_deleted` BOOLEAN      NOT NULL,

	CONSTRAINT `PK_component_categories` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `component_categories`
(
	`id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(20) -- String
SET     @id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `component_categories`
(
	`id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `component_categories`
(
	`id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(20) -- String
SET     @id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `component_categories`
(
	`id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Components`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Components`
(
	`id`          VARCHAR(100) NOT NULL,
	`category_id` VARCHAR(100) NOT NULL,
	`service_id`  VARCHAR(100) NOT NULL,
	`is_deleted`  BOOLEAN      NOT NULL,

	CONSTRAINT `PK_Components` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `Components`
(
	`id`,
	`category_id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(21) -- String
SET     @id = 'TestProcessComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestProcessCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestProcessService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `Components`
(
	`id`,
	`category_id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent1'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory1'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `Components`
(
	`id`,
	`category_id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @id VarChar(21) -- String
SET     @id = 'TestElementComponent2'
DECLARE @category_id VarChar(20) -- String
SET     @category_id = 'TestElementCategory2'
DECLARE @service_id VarChar(18) -- String
SET     @service_id = 'TestElementService'
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 0

INSERT INTO `Components`
(
	`id`,
	`category_id`,
	`service_id`,
	`is_deleted`
)
VALUES
(
	@id,
	@category_id,
	@service_id,
	@is_deleted
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @is_deleted Bool -- Boolean
SET     @is_deleted = 1

UPDATE
	`component_categories` `ctg`,
	`element_services` `ct`
		INNER JOIN `component_categories` `ctg_1` ON `ct`.`id` = `ctg_1`.`service_id`
		INNER JOIN `Components` `cm` ON `ctg_1`.`id` = `cm`.`category_id` AND `cm`.`is_deleted` = 0
SET
	`ctg`.`is_deleted` = @is_deleted
WHERE
	`ct`.`id` = 'TestProcessService' AND `ctg`.`id` = `ctg_1`.`id`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	`x`.`is_deleted` = 1 AND `x`.`service_id` = 'TestProcessService'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`id`,
	`x`.`service_id`,
	`x`.`is_deleted`
FROM
	`component_categories` `x`
WHERE
	`x`.`is_deleted` = 0 AND `x`.`service_id` <> 'TestProcessService'

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Components`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `component_categories`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `element_services`

