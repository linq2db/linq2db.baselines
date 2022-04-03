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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
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
-- MySqlConnector MySql
DECLARE @skip_2 Int32
SET     @skip_2 = 6

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip_2, 9223372036854775807

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TakeSkipClass`

