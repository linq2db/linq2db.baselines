-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
DECLARE @minValue Integer(4) -- Int32
SET     @minValue = 15

SELECT
	"o"."Id",
	"o"."Value",
	(
		SELECT
			COUNT(*)
		FROM
			"IssueAliasBugT2" "i"
		WHERE
			"i"."OutId" = "o"."Id"
	)
FROM
	"IssueAliasBugT1" "o"
WHERE
	"o"."Value" >= @minValue

