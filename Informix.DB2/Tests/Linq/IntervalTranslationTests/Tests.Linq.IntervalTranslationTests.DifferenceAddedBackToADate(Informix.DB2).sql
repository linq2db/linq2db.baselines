-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(16) -- DateTime
SET     @StartedOn = TO_DATE('2026-01-01 10:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @FinishedOn Timestamp(16) -- DateTime
SET     @FinishedOn = TO_DATE('2026-01-03 13:30:00', '%Y-%m-%d %H:%M:%S')

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
SELECT FIRST 2
	r.StartedOn,
	r.FinishedOn
FROM
	EventRow r

