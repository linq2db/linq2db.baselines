﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
('Value1'),
('Value2'),
('Value3'),
('Value4'),
('Value5'),
('Value6'),
('Value7'),
('Value8')

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @skip_2 Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int32
SET     @skip_3 = 1

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip_2, @skip_3

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

