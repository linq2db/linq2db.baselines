-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Timestamp(16) -- DateTime
SET     @Value = TO_DATE('2026-06-01 10:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @Day Date(16)
SET     @Day = TO_DATE('2026-06-01', '%Y-%m-%d')
DECLARE @Wide Timestamp(16) -- DateTime
SET     @Wide = TO_DATE('2026-06-01 10:00:00.25000', '%Y-%m-%d %H:%M:%S.%F5')

INSERT INTO CoarseDateShapesRow
(
	Id,
	"Value",
	"Day",
	Wide
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	r.Wide::datetime year to second < TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	r.Wide::datetime year to second >= TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	r.Wide::datetime year to second = TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

