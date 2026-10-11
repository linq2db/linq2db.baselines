-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2025-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2025-06-01 10:00:00'

INSERT INTO `EventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`EventRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, CURRENT_TIMESTAMP) * 10 AS DOUBLE) / 864000000000 > 1

