BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `test_temp`
(
	`ID`     INT     AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL                NOT NULL,

	CONSTRAINT `PK_test_temp` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, @take

BeforeExecute
-- MariaDB MySql

DELETE FROM `test_temp`

BeforeExecute
-- MariaDB MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, @take

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `test_temp`

