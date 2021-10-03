﻿BeforeExecute
-- MySql

CREATE TEMPORARY TABLE IF NOT EXISTS `temp_table1`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(1,2)

BeforeExecute
-- MySql

CREATE TEMPORARY TABLE IF NOT EXISTS `temp_table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql

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
-- MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table1` `t1`

BeforeExecute
-- MySql

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`temp_table2` `t1`

BeforeExecute
-- MySql

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(2,3)

BeforeExecute
-- MySql
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Value_1 Int32
SET     @Value_1 = 3

INSERT INTO `temp_table1`
(
	`ID`,
	`Value`
)
VALUES
(
	@ID,
	@Value_1
)

BeforeExecute
INSERT BULK `temp_table1`(ID, Value

BeforeExecute
-- MySql

TRUNCATE TABLE `temp_table1`

BeforeExecute
-- MySql

TRUNCATE TABLE `temp_table2`

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `temp_table2`

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `temp_table1`

