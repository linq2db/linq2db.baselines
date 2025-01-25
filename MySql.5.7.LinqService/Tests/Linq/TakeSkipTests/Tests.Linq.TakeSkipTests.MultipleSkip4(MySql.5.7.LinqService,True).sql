BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @skip Int32
SET     @skip = 6

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip, 9223372036854775807

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TakeSkipClass`

