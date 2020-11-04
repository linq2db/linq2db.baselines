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
	EXISTS(
		SELECT
			*
		FROM
			`TakeSkipClass` `t1`
		GROUP BY
			`t1`.`Value`
		HAVING
			Count(*) > 1
		LIMIT 1
	) as `c1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

