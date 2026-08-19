-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	(
		SELECT
			MIN(`t1`.`InSeconds`)
		FROM
			`DurationRow` `t1`
	),
	(
		SELECT
			MAX(`t2`.`InSeconds`)
		FROM
			`DurationRow` `t2`
	)
FROM
	`DurationRow` `r`
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	(
		SELECT
			MIN(`t1`.`InSeconds`)
		FROM
			`DurationRow` `t1`
	),
	(
		SELECT
			MAX(`t2`.`InSeconds`)
		FROM
			`DurationRow` `t2`
	)
FROM
	`DurationRow` `r`
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p Int64
SET     @p = 60

SELECT
	(
		SELECT
			MIN(`t1`.`InSeconds`)
		FROM
			`DurationRow` `t1`
	)
FROM
	`DurationRow` `r`
WHERE
	`r`.`InSeconds` > @p
LIMIT 1

