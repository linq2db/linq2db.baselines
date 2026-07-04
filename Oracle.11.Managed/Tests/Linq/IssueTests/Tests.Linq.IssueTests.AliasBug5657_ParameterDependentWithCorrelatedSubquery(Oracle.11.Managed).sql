-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11

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

-- Oracle.11.Managed Oracle11
DECLARE @minValue Int32
SET     @minValue = 15

SELECT
	o."Id",
	o."Value",
	(
		SELECT
			COUNT(*)
		FROM
			"IssueAliasBugT2" i
		WHERE
			i."OutId" = o."Id"
	)
FROM
	"IssueAliasBugT1" o
WHERE
	o."Value" >= :minValue

