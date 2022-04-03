BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SampleClass`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value_1 Int32
SET     @Value_1 = 100

INSERT INTO `SampleClass`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t2`.`Value1`,
	`t2`.`Value2`
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

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t`.`Id`,
	`t`.`Value`
FROM
	`SampleClass` `t`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SampleClass`

