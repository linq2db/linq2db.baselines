BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `test_insert_or_replace`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `test_insert_or_replace`
(
	`id`         INT           NOT NULL,
	`name`       VARCHAR(4000)     NULL,
	`created_by` VARCHAR(4000)     NULL,
	`updated_by` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_test_insert_or_replace` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'test'

INSERT IGNORE INTO `test_insert_or_replace`
(
	`id`,
	`name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'test'

INSERT IGNORE INTO `test_insert_or_replace`
(
	`id`,
	`name`
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `test_insert_or_replace`

