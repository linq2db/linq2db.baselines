BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 100

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t_1`.`Id`,
	`t_1`.`Value`,
	`t2`.`not_null`,
	`t2`.`Value1`,
	`t2`.`Value2`
FROM
	`SampleClass` `t_1`
		LEFT JOIN (
			SELECT
				`t1`.`Value1`,
				`t1`.`Value2`,
				1 as `not_null`
			FROM
				(
					SELECT
						Date_Add(CURRENT_TIMESTAMP, Interval `t`.`Value` Day) as `Value1`,
						Date_Add(CURRENT_TIMESTAMP, Interval 2 Day) as `Value2`
					FROM
						`SampleClass` `t`
					WHERE
						`t`.`Value` = 1
					UNION
					SELECT
						Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
						Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
				) `t1`
			LIMIT 1
		) `t2` ON 1=1

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `SampleClass`

