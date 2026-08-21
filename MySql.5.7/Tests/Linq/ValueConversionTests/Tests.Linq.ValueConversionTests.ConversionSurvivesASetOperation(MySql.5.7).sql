-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Span Int64
SET     @Span = 5400

INSERT INTO `ScaledRow`
(
	`Id`,
	`Span`
)
VALUES
(
	@Id,
	@Span
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Source`,
	`t1`.`Span`
FROM
	(
		SELECT
			CAST(1 AS SIGNED) as `Source`,
			`r`.`Span`
		FROM
			`ScaledRow` `r`
		UNION ALL
		SELECT
			CAST(2 AS SIGNED) as `Source`,
			`r_1`.`Span`
		FROM
			`ScaledRow` `r_1`
	) `t1`
ORDER BY
	`t1`.`Source`

