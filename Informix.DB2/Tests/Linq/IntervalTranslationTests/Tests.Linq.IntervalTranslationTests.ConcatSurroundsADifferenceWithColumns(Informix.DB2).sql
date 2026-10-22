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
	t2.c1,
	t2.Duration,
	t2.c1_1,
	t2.c2,
	t2.Duration_1
FROM
	(
		SELECT
			t1.Source,
			t1.Source = 1 as c1,
			t1.Duration,
			t1.c1 as c1_1,
			t1.c2,
			NULL::BigInt as Duration_1
		FROM
			(
				SELECT
					1::Int as Source,
					NVL(r.Budget, NULL) as Duration,
					NULL::datetime year to fraction as c1,
					NULL::datetime year to fraction as c2
				FROM
					BudgetedTaskRow r
				UNION ALL
				SELECT
					2::Int as Source,
					NULL::BigInt as Duration,
					r_1.FinishedOn as c1,
					r_1.StartedOn as c2
				FROM
					BudgetedTaskRow r_1
			) t1
		UNION ALL
		SELECT
			3::Int as Source,
			NULL::BOOLEAN as c1,
			NULL::BigInt as Duration,
			NULL::datetime year to fraction as c1_1,
			NULL::datetime year to fraction as c2,
			r_2.Budget as Duration_1
		FROM
			BudgetedTaskRow r_2
	) t2
ORDER BY
	t2.Source

