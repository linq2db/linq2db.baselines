-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 5400
DECLARE @InTicks Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Source`,
	`t1`.`Duration`,
	`t1`.`Duration_1`
FROM
	(
		SELECT
			CAST(1 AS SIGNED) as `Source`,
			`r`.`InSeconds` as `Duration`,
			CAST(NULL AS SIGNED) as `Duration_1`
		FROM
			`DurationRow` `r`
		UNION ALL
		SELECT
			CAST(2 AS SIGNED) as `Source`,
			CAST(NULL AS SIGNED) as `Duration`,
			`r_1`.`InTicks` as `Duration_1`
		FROM
			`DurationRow` `r_1`
	) `t1`
ORDER BY
	`t1`.`Source`

