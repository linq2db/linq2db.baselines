-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(16) -- DateTime
SET     @StartedOn = TO_DATE('2026-06-01 10:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @FinishedOn Timestamp -- DateTime
SET     @FinishedOn = NULL

INSERT INTO CoarseNullableEventRow
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp(16) -- DateTime
SET     @StartedOn = TO_DATE('2026-06-01 11:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @FinishedOn Timestamp(16) -- DateTime
SET     @FinishedOn = TO_DATE('2026-06-01 13:00:00', '%Y-%m-%d %H:%M:%S')

INSERT INTO CoarseNullableEventRow
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
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Nvl(r.FinishedOn, r.StartedOn) < TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5') > Nvl(r.FinishedOn, r.StartedOn)

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseNullableEventRow r
WHERE
	Nvl(r.FinishedOn, r.StartedOn) = TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

