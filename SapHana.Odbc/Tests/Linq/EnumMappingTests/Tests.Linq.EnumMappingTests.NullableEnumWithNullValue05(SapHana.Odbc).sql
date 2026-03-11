-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 101
DECLARE @Value Int -- Int32
SET     @Value = 11

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 102
DECLARE @Value Int -- Int32
SET     @Value = 0

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 103
DECLARE @Value Int -- Int32
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"IntValue"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."IntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" <= 103
ORDER BY
	"r"."ID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."ID",
	"r"."IntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" <= 103
ORDER BY
	"r"."ID"

-- SapHana.Odbc SapHanaOdbc
DECLARE @p Int -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < ?

