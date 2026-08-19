-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "IssueAliasBugT1"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	10
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "IssueAliasBugT1"
(
	"Id",
	"Value"
)
VALUES
(
	2,
	20
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "IssueAliasBugT2"
(
	"Id",
	"OutId",
	"Cnt"
)
VALUES
(
	1,
	1,
	3
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "IssueAliasBugT2"
(
	"Id",
	"OutId",
	"Cnt"
)
VALUES
(
	2,
	1,
	5
)

-- PostgreSQL.9.2 PostgreSQL
INSERT INTO "IssueAliasBugT2"
(
	"Id",
	"OutId",
	"Cnt"
)
VALUES
(
	3,
	2,
	7
)

-- PostgreSQL.9.2 PostgreSQL
DECLARE @minValue Integer -- Int32
SET     @minValue = 15

SELECT
	o."Id",
	o."Value",
	(
		SELECT
			SUM(i."Cnt")
		FROM
			"IssueAliasBugT2" i
		WHERE
			i."OutId" = o."Id"
		GROUP BY
			i."OutId"
		LIMIT 1
	)
FROM
	"IssueAliasBugT1" o
WHERE
	o."Value" >= :minValue

