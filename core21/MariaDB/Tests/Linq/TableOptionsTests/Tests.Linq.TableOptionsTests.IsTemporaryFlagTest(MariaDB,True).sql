BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TEMPORARY TABLE `IsTemporaryTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`IsTemporaryTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `IsTemporaryTable`

