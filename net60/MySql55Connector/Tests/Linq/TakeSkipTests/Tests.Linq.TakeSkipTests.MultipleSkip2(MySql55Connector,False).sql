﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT 3, 9223372036854775807

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT 4, 9223372036854775807

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

