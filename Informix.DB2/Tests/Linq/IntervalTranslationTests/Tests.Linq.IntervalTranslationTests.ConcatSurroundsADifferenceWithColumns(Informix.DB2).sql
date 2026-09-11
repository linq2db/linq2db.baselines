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
	t2.Source,
	t2.Duration,
	t2.Duration_1,
	t2.Duration_2,
	t2.Duration_3,
	t2.Duration_4
FROM
	(
		SELECT
			t1.Source,
			t1.Source = 1 as Duration,
			t1.Duration as Duration_1,
			t1.Duration_1 as Duration_2,
			t1.Duration_2 as Duration_3,
			NULL::BigInt as Duration_4
		FROM
			(
				SELECT
					1::Int as Source,
					NVL(r.Budget, NULL) as Duration,
					NULL::datetime year to fraction as Duration_1,
					NULL::datetime year to fraction as Duration_2
				FROM
					BudgetedTaskRow r
				UNION ALL
				SELECT
					2::Int as Source,
					NULL::BigInt as Duration,
					r_1.FinishedOn as Duration_1,
					r_1.StartedOn as Duration_2
				FROM
					BudgetedTaskRow r_1
			) t1
		UNION ALL
		SELECT
			3::Int as Source,
			NULL::BOOLEAN as Duration,
			NULL::BigInt as Duration_1,
			NULL::datetime year to fraction as Duration_2,
			NULL::datetime year to fraction as Duration_3,
			r_2.Budget as Duration_4
		FROM
			BudgetedTaskRow r_2
	) t2
ORDER BY
	t2.Source

