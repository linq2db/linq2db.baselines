BeforeExecute
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
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	EXISTS(
		SELECT
			`t1`.`Value`
		FROM
			`TakeSkipClass` `t1`
		GROUP BY
			`t1`.`Value`
		HAVING
			Count(*) > 1
		LIMIT @take
	) as `c1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TakeSkipClass`

