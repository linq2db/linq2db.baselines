BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TakeSkipClass`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `TakeSkipClass`
(
	`Value` VARCHAR(10)     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Value`
FROM
	`TakeSkipClass` `t1`
ORDER BY
	`t1`.`Value`
LIMIT 2

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `TakeSkipClass`

