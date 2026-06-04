-- ClickHouse.MySql ClickHouse

INSERT INTO Projection1
(
	S1
)
VALUES
(
	's1'
)

-- ClickHouse.MySql ClickHouse

INSERT INTO Projection2
(
	S1
)
VALUES
(
	's1'
)

-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		projection2_1.S1 as S1
	FROM
		Projection1 t1
			LEFT JOIN Projection2 projection2_1 ON t1.S1 = projection2_1.S1
)
SELECT
	t2.S1
FROM
	CTE_1 t2

