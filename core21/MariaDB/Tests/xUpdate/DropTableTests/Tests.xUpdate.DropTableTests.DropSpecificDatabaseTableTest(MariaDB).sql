BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDB MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MariaDB MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `testdata`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

BeforeExecute
-- MariaDB MySql

DROP TABLE `testdata`.`DropTableTest`

BeforeExecute
-- MariaDB MySql

SELECT
	`t1`.`ID`
FROM
	`testdata`.`DropTableTest` `t1`

