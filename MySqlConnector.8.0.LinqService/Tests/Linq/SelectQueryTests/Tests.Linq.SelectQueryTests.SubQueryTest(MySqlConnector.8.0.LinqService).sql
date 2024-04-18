BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`t_1`.`Id`,
	`t_1`.`Value`,
	`t3`.`Value1`,
	`t3`.`Value2`,
	`t3`.`is_empty`
FROM
	`SampleClass` `t_1`
		LEFT JOIN LATERAL (
			SELECT
				`t2`.`Value1`,
				`t2`.`Value2`,
				1 as `is_empty`
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
						`t1`.`Value1`,
						`t1`.`Value2`
					FROM
						(
							SELECT
								Date_Add(CURRENT_TIMESTAMP, Interval 3 Day) as `Value1`,
								Date_Add(CURRENT_TIMESTAMP, Interval 4 Day) as `Value2`
						) `t1`
				) `t2`
			LIMIT @take
		) `t3` ON 1=1

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `SampleClass`

