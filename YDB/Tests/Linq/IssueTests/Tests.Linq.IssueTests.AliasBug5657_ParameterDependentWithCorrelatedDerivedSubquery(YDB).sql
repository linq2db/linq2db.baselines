-- YDB Ydb
INSERT INTO IssueAliasBugT1
(
	Id,
	`Value`
)
VALUES
(
	1,
	10
)

-- YDB Ydb
INSERT INTO IssueAliasBugT1
(
	Id,
	`Value`
)
VALUES
(
	2,
	20
)

-- YDB Ydb
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

-- YDB Ydb
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

-- YDB Ydb
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

-- YDB Ydb
DECLARE $minValue Int32
SET     $minValue = 15

SELECT
	o.Id as Id,
	o.`Value` as Value_1,
	t2.SumCnt as SumCnt
FROM
	IssueAliasBugT1 o
		LEFT JOIN (
			SELECT
				t1.SumCnt as SumCnt,
				t1.OutId as OutId
			FROM
				(
					SELECT
						SUM(i.Cnt) as SumCnt,
						ROW_NUMBER() OVER (PARTITION BY i.OutId ORDER BY i.OutId) as rn,
						i.OutId as OutId
					FROM
						IssueAliasBugT2 i
					GROUP BY
						i.OutId
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.OutId = o.Id
WHERE
	o.`Value` >= $minValue

