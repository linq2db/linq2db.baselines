-- ClickHouse.MySql ClickHouse
INSERT INTO IssueAliasBugT1
(
	Id,
	Value
)
VALUES
(
	1,
	10
)

-- ClickHouse.MySql ClickHouse
INSERT INTO IssueAliasBugT1
(
	Id,
	Value
)
VALUES
(
	2,
	20
)

-- ClickHouse.MySql ClickHouse
INSERT INTO IssueAliasBugT2
(
	Id,
	OutId,
	Cnt
)
VALUES
(
	1,
	1,
	3
)

-- ClickHouse.MySql ClickHouse
INSERT INTO IssueAliasBugT2
(
	Id,
	OutId,
	Cnt
)
VALUES
(
	2,
	1,
	5
)

-- ClickHouse.MySql ClickHouse
INSERT INTO IssueAliasBugT2
(
	Id,
	OutId,
	Cnt
)
VALUES
(
	3,
	2,
	7
)

-- ClickHouse.MySql ClickHouse
SELECT
	o.Id,
	o.Value,
	t1.SumCnt
FROM
	IssueAliasBugT1 o
		LEFT JOIN (
			SELECT
				SUM(i.Cnt) as SumCnt,
				ROW_NUMBER() OVER (PARTITION BY i.OutId ORDER BY i.OutId) as rn,
				i.OutId as OutId
			FROM
				IssueAliasBugT2 i
			GROUP BY
				i.OutId
		) t1 ON t1.OutId = o.Id AND t1.rn = 1
WHERE
	o.Value >= 15

