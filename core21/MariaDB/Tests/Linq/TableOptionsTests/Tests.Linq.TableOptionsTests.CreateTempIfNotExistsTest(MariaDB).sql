BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TEMPORARY TABLE `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `CreateIfNotExistsTable`

