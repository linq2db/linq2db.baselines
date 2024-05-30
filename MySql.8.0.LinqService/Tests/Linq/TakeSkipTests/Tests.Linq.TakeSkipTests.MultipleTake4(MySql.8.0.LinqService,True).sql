BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @take

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `TakeSkipClass`

