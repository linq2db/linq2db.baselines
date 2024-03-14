BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

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
	CASE
		WHEN EXISTS(
			SELECT
				`group_1`.`Value`
			FROM
				`TakeSkipClass` `group_1`
			GROUP BY
				`group_1`.`Value`
			HAVING
				Count(*) > 1
			LIMIT @take
		)
			THEN 1
		ELSE 0
	END as `c1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TakeSkipClass`

