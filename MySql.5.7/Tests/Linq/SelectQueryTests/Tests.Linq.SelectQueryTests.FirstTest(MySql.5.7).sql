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
	Date_Add(CURRENT_TIMESTAMP, Interval 1 Day) as `Value1`,
	Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `SampleClass`

