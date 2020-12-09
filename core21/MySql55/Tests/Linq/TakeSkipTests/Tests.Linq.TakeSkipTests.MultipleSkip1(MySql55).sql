BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
DECLARE @skip_2 Int32
SET     @skip_2 = 3

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip_2, 9223372036854775807

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `TakeSkipClass`

