﻿BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PIPPO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'PLUTO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Value VarChar(5) -- AnsiString
SET     @Value = 'BOLTO'

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
(
	@Value
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT DISTINCT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
LIMIT 3

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

