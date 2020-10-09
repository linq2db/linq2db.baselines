BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql
DECLARE @take_1 Int32
SET     @take_1 = 2

SELECT 
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @take_1

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TakeSkipClass`

