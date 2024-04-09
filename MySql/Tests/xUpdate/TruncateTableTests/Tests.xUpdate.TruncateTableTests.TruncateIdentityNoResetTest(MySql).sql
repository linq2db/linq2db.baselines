﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `test_temp`
(
	`ID`     INT     AUTO_INCREMENT NOT NULL,
	`Field1` DECIMAL                NOT NULL,

	CONSTRAINT `PK_test_temp` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE FROM `test_temp`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MySql MySql.Official MySql

DELETE FROM `test_temp`

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `test_temp`
(
	`Field1`
)
VALUES
(
	1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 1

SELECT
	`t1`.`ID`,
	`t1`.`Field1`
FROM
	`test_temp` `t1`
ORDER BY
	`t1`.`ID`
LIMIT @skip, 2

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `test_temp`

