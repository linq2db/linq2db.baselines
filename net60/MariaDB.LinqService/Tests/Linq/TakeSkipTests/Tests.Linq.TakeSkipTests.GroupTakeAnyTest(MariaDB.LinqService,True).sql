BeforeExecute
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
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PIPPO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value_1
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value_1
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value_1
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'BOLTO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value_1
)

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`t1`.`Value`
			FROM
				`TakeSkipClass` `t1`
			GROUP BY
				`t1`.`Value`
			HAVING
				Count(*) > 1
			LIMIT @take
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

