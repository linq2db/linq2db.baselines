﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySqlConnector MySql

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
('Value8'),
('Value9')

BeforeExecute
-- MySqlConnector MySql
DECLARE @skip_3 Int32
SET     @skip_3 = 3
DECLARE @skip_4 Int32
SET     @skip_4 = 1

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip_3, @skip_4

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

