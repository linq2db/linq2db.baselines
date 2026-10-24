-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(16) -- DateTime
SET     @StartedOn = TO_DATE('2026-01-03 13:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @FinishedOn Timestamp(16) -- DateTime
SET     @FinishedOn = TO_DATE('2026-01-03 14:30:00', '%Y-%m-%d %H:%M:%S')

INSERT INTO EventRow
(
	Id,
	StartedOn,
	FinishedOn
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Informix.DB2 Informix
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double(8)
SET     @TotalMilliseconds = 0.1234

SELECT FIRST 2
	@Ticks::BigInt + r.Id,
	@TotalMilliseconds::Float + r.Id::Float
FROM
	EventRow r

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	EventRow r

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	EventRow r

-- Informix.DB2 Informix
DECLARE @FinishedOn Timestamp(16) -- DateTime
SET     @FinishedOn = TO_DATE('2026-01-03 13:30:00.00024', '%Y-%m-%d %H:%M:%S.%F5')

SELECT
	r.Id
FROM
	EventRow r
WHERE
	r.FinishedOn > @FinishedOn

