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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value1'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value2'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value3'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value4'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value5'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value6'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value7'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value8'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value9'

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
DECLARE @skip_1 Int32
SET     @skip_1 = 3
DECLARE @take_2 Int32
SET     @take_2 = 2

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip_1, @take_2

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

