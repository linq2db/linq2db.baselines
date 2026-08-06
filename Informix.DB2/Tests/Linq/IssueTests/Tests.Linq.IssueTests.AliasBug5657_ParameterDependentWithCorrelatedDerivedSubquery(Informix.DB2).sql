-- Informix.DB2 Informix
INSERT INTO IssueAliasBugT1
(
	Id,
	"Value"
)
VALUES
(
	1,
	10
)

-- Informix.DB2 Informix
INSERT INTO IssueAliasBugT1
(
	Id,
	"Value"
)
VALUES
(
	2,
	20
)

-- Informix.DB2 Informix
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

-- Informix.DB2 Informix
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

-- Informix.DB2 Informix
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

-- Informix.DB2 Informix
DECLARE @minValue Integer(4) -- Int32
SET     @minValue = 15

SELECT
	o.Id,
	o."Value",
	t1.SumCnt
FROM
	IssueAliasBugT1 o
		LEFT JOIN (
			SELECT
				SUM(i.Cnt) as SumCnt,
				ROW_NUMBER() OVER (PARTITION BY i.OutId ORDER BY i.OutId) as rn,
				i.OutId
			FROM
				IssueAliasBugT2 i
			GROUP BY
				i.OutId
		) t1 ON t1.OutId = o.Id AND t1.rn = 1
WHERE
	o."Value" >= @minValue

