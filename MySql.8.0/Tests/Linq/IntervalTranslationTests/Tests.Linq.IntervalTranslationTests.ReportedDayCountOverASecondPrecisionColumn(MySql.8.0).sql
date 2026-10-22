-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-06-01 10:00:00'
DECLARE @OpenedOn Datetime -- DateTime
SET     @OpenedOn = '2026-06-01'
DECLARE @ClosedOn Datetime -- DateTime
SET     @ClosedOn = '2026-06-01'

INSERT INTO `CoarseEventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`,
	`OpenedOn`,
	`ClosedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-05-25 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-05-25 10:00:00'
DECLARE @OpenedOn Datetime -- DateTime
SET     @OpenedOn = '2026-05-25'
DECLARE @ClosedOn Datetime -- DateTime
SET     @ClosedOn = '2026-05-25'

INSERT INTO `CoarseEventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`,
	`OpenedOn`,
	`ClosedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(Floor(CAST(TimestampDiff(Microsecond, MIN(`grp`.`StartedOn`), MAX(`grp`.`StartedOn`)) * 10 AS DOUBLE) / 864000000000) AS SIGNED) + 1
FROM
	`CoarseEventRow` `grp`
LIMIT 2

