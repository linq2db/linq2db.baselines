-- SapHana.Odbc SapHanaOdbc

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

-- SapHana.Odbc SapHanaOdbc

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

-- SapHana.Odbc SapHanaOdbc

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

-- SapHana.Odbc SapHanaOdbc

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

-- SapHana.Odbc SapHanaOdbc

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

-- SapHana.Odbc SapHanaOdbc
DECLARE @minValue Int -- Int32
SET     @minValue = 15

SELECT
	"o"."Id",
	"o"."Value",
	"t1"."SumCnt"
FROM
	"IssueAliasBugT1" "o"
		LEFT JOIN LATERAL (
			SELECT
				SUM("i"."Cnt") as "SumCnt"
			FROM
				"IssueAliasBugT2" "i"
			WHERE
				"i"."OutId" = "o"."Id"
			GROUP BY
				"i"."OutId"
			LIMIT 1
		) "t1" ON 1=1
WHERE
	"o"."Value" >= ?

