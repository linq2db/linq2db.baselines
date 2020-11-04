BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `TakeSkipClass`
(
	`Value`
)
VALUES
('PIPPO'),
('PLUTO'),
('PLUTO'),
('BOLTO')

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`TakeSkipClass` `t1`
		GROUP BY
			`t1`.`Value`
		HAVING
			Count(*) > 1
		LIMIT @take
	) as `c1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

