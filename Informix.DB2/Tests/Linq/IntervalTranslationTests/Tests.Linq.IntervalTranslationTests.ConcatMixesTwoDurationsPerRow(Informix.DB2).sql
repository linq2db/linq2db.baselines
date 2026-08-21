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
	t1.First_1,
	t1.First_2,
	t1.First_3,
	t1.Second_1,
	t1.Second_2,
	t1.Second_3
FROM
	(
		SELECT
			1::Int as Source,
			NVL(r.Budget, NULL) as First_1,
			NULL::datetime year to fraction as First_2,
			NULL::datetime year to fraction as First_3,
			NVL(r.FinishedOn, NULL) as Second_1,
			NVL(r.StartedOn, NULL) as Second_2,
			NULL::BigInt as Second_3
		FROM
			BudgetedTaskRow r
		UNION ALL
		SELECT
			2::Int as Source,
			NULL::BigInt as First_1,
			r_1.FinishedOn as First_2,
			r_1.StartedOn as First_3,
			NULL::datetime year to fraction as Second_1,
			NULL::datetime year to fraction as Second_2,
			r_1.Budget as Second_3
		FROM
			BudgetedTaskRow r_1
	) t1
ORDER BY
	t1.Source

