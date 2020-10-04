﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `SampleClass`
(
	`Id`     INT         NOT NULL,
	`Value1` VARCHAR(50)     NULL,
	`Value2` VARCHAR(50)     NULL,
	`Value3` VARCHAR(50)     NULL,
	`Value4` VARCHAR(50)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `SampleClass`
(
	`Id`,
	`Value1`,
	`Value2`,
	`Value3`,
	`Value4`
)
VALUES
(1,'V1','V2',NULL,'V4'),
(2,NULL,'Z2',NULL,NULL),
(3,'Z1',NULL,NULL,'Z4')

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @separator VarChar(4) -- String
SET     @separator = ' -> '

SELECT
	Max(`t1`.`Value4`),
	GROUP_CONCAT(`t1`.`Value4` SEPARATOR @separator)
FROM
	`SampleClass` `t1`
GROUP BY
	`t1`.`Id`,
	`t1`.`Value4`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `SampleClass`

