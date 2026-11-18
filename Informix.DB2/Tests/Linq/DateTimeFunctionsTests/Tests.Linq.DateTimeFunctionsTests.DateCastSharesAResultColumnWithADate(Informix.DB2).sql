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
	Extend(r."Value", Year to Day)
FROM
	CoarseDateShapesRow r
UNION ALL
SELECT
	r_1."Day"
FROM
	CoarseDateShapesRow r_1

-- Informix.DB2 Informix
SELECT
	CASE
		WHEN r.Id > 0 THEN Extend(r."Value", Year to Day)
		ELSE Extend(r."Value", Year to Day)
	END
FROM
	CoarseDateShapesRow r

