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
DECLARE @skip Int32
SET     @skip = 3

SELECT 
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip,9223372036854775807

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @skip Int32
SET     @skip = 4

SELECT 
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT @skip,9223372036854775807

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TakeSkipClass`

