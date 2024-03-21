BeforeExecute
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
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`group_1`.`Value`
			FROM
				`TakeSkipClass` `group_1`
			GROUP BY
				`group_1`.`Value`
			HAVING
				COUNT(*) > 1
			LIMIT 1
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

