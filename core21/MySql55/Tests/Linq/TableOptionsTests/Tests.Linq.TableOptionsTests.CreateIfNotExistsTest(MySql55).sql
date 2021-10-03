BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `CreateIfNotExistsTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	2
)

BeforeExecute
-- MySql55 MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`CreateIfNotExistsTable` `t1`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

