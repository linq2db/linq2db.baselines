﻿BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS `temp_table1`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(1,2)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS `temp_table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

INSERT INTO `temp_table2`
(
	`ID`,
	`Value`
)
SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table1` `t1`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table1` `t1`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table2` `t1`

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(2,3)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Value Int32
SET     @Value = 3

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(4,5)

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

TRUNCATE TABLE `temp_table1`

BeforeExecute
-- MySql MySql.Official MySql (asynchronously)

TRUNCATE TABLE `temp_table2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `temp_table2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `temp_table1`

