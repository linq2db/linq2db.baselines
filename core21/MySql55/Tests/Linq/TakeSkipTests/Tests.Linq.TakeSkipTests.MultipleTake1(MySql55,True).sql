﻿BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySql55 MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql55 MySql

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
('PLUTO'),
('PIPPO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- MySql55 MySql
DECLARE @take_2 Int32
SET     @take_2 = 2

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @take_2

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TakeSkipClass`

