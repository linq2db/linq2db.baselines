-- DB2 DB2.LUW DB2LUW
INSERT INTO "AliasBaseTable"
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
INSERT INTO "AliasBaseTable"
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
INSERT INTO "AliasDetailTable"
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
INSERT INTO "AliasDetailTable"
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
INSERT INTO "AliasDetailTable"
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
			SUM("i"."Cnt")
		FROM
			"AliasDetailTable" "i"
		WHERE
			"i"."OutId" = "o"."Id"
		GROUP BY
			"i"."OutId"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"AliasBaseTable" "o"
WHERE
	"o"."Value" >= @minValue

