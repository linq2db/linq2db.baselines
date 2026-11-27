-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
DECLARE @minValue Integer -- Int32
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

