BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 3
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip, @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

