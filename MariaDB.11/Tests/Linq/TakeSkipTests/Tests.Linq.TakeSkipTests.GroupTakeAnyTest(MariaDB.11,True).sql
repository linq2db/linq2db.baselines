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
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`item_1`.`Value`
			FROM
				`TakeSkipClass` `item_1`
			GROUP BY
				`item_1`.`Value`
			HAVING
				COUNT(*) > 1
			LIMIT @take
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

