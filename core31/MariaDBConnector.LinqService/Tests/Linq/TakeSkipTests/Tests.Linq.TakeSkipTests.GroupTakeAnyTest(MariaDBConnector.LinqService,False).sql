﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql
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
-- MariaDBConnector MySqlConnector MySql

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
			LIMIT 1
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

