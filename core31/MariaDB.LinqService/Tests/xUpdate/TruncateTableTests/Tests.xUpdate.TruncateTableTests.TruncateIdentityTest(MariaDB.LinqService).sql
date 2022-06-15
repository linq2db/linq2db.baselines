BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TestIdTrun`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TestIdTrun`
(
	`ID`     INT     AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL                NOT NULL,

	CONSTRAINT `PK_TestIdTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`TestIdTrun` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MariaDB MySql.Official MySql

TRUNCATE TABLE `TestIdTrun`

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TestIdTrun`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`TestIdTrun` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TestIdTrun`

