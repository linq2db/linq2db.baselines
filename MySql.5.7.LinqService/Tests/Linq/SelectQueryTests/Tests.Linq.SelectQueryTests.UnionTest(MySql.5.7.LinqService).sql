BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day)
FROM
	`SampleClass` `t`
WHERE
	`t`.`Value` = 1
UNION
SELECT
	Date_Add(CURRENT_TIMESTAMP, Interval 3 Day),
	Date_Add(CURRENT_TIMESTAMP, Interval 4 Day)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SampleClass`

