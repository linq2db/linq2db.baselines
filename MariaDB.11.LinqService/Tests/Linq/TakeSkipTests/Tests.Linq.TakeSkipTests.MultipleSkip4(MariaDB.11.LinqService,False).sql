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
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value1'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value2'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value3'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value4'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value5'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value6'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value7'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value8'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT 6, 9223372036854775807

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

