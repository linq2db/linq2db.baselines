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

SELECT DISTINCT 
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
LIMIT 3

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TakeSkipClass`

