﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TakeSkipClass`
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
('Value8')

BeforeExecute
-- MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take_1 Int32
SET     @take_1 = 1

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip, @take_1

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TakeSkipClass`

