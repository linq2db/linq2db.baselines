BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `test_insert_or_replace`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `test_insert_or_replace`
(
	`id`         INT           NOT NULL,
	`name`       VARCHAR(4000)     NULL,
	`created_by` VARCHAR(4000)     NULL,
	`updated_by` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_test_insert_or_replace` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT IGNORE INTO `test_insert_or_replace`
(
	`id`,
	`name`
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT IGNORE INTO `test_insert_or_replace`
(
	`id`,
	`name`
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `test_insert_or_replace`

