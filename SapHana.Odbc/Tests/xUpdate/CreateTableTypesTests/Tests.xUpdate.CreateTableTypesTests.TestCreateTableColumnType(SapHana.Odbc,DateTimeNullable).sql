-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = TIMESTAMP '2018-11-25 01:02:03.0000000'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."DateTimeNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

