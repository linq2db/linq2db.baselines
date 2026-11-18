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
WITH CTE_1 (Day_1)
AS
(
	SELECT
		MAX(g_1."Day")
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Day_1 < TO_DATE('2026-06-01 10:00:00', '%Y-%m-%d %H:%M:%S')

-- Informix.DB2 Informix
WITH CTE_1 (Day_1, Value_1)
AS
(
	SELECT
		MAX(g_1."Day"),
		MAX(g_1."Value")
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Value_1 < TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

-- Informix.DB2 Informix
WITH CTE_1 (Day_1, Value_1)
AS
(
	SELECT
		MAX(g_1."Day"),
		MAX(g_1."Value")
	FROM
		CoarseDateShapesRow g_1
	GROUP BY
		g_1.Id
)
SELECT
	COUNT(*)
FROM
	CTE_1 t1
WHERE
	t1.Value_1 = TO_DATE('2026-06-01 10:00:00.50000', '%Y-%m-%d %H:%M:%S.%F5')

