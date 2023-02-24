﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql
DECLARE @skip_3 Int32
SET     @skip_3 = 6

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip_3, 9223372036854775807

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

