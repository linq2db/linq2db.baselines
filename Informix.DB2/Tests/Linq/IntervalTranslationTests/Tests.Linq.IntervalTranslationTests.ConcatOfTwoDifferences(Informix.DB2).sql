-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(16) -- DateTime
SET     @StartedOn = TO_DATE('2026-01-01 10:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @FinishedOn Timestamp(16) -- DateTime
SET     @FinishedOn = TO_DATE('2026-01-01 11:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @Budget BigInt(8) -- Int64
SET     @Budget = 10800

INSERT INTO BudgetedTaskRow
(
	Id,
	StartedOn,
	FinishedOn,
	Budget
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@Budget
)

-- Informix.DB2 Informix
SELECT
	t1.Source,
	t1.Duration,
	t1.Duration_1
FROM
	(
		SELECT
			1::Int as Source,
			r.FinishedOn as Duration,
			r.StartedOn as Duration_1
		FROM
			BudgetedTaskRow r
		UNION ALL
		SELECT
			2::Int as Source,
			r_1.FinishedOn as Duration,
			r_1.StartedOn as Duration_1
		FROM
			BudgetedTaskRow r_1
	) t1
ORDER BY
	t1.Source

