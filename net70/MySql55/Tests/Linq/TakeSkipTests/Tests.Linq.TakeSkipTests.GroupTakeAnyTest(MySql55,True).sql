BeforeExecute
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
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`t1`.`Value`
			FROM
				`TakeSkipClass` `t1`
			GROUP BY
				`t1`.`Value`
			HAVING
				Count(*) > 1
			LIMIT @take
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

