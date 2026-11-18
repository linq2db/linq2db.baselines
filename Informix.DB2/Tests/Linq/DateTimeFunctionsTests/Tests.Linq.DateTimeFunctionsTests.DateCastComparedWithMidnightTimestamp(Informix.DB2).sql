-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Timestamp(16) -- DateTime
SET     @Value = TO_DATE('2026-06-01 10:00:00', '%Y-%m-%d %H:%M:%S')
DECLARE @Day Date(16)
SET     @Day = TO_DATE('2026-06-01', '%Y-%m-%d')
DECLARE @Wide Timestamp(16) -- DateTime
SET     @Wide = TO_DATE('2026-06-01 10:00:00', '%Y-%m-%d %H:%M:%S')

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
	Extend(r."Value", Year to Day) = TO_DATE('2026-06-01', '%Y-%m-%d')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	Extend(r."Value", Year to Day) < TO_DATE('2026-06-01', '%Y-%m-%d')

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDateShapesRow r
WHERE
	TO_DATE('2026-06-01', '%Y-%m-%d') = Extend(r."Value", Year to Day)

