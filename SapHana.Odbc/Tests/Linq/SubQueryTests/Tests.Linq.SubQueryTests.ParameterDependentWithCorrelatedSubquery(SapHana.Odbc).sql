-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
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

-- SapHana.Odbc SapHanaOdbc
DECLARE @minValue Int -- Int32
SET     @minValue = 15

SELECT
	"o"."Id",
	"o"."Value",
	(
		SELECT
			COUNT(*)
		FROM
			"AliasDetailTable" "i"
		WHERE
			"i"."OutId" = "o"."Id"
	)
FROM
	"AliasBaseTable" "o"
WHERE
	"o"."Value" >= ?

