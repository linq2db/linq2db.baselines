BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "IsNullOrEmptyTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "IsNullOrEmptyTable"
(
	"Id"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(3) -- String
SET     @Value = '   '

INSERT INTO "IsNullOrEmptyTable"
(
	"Id",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value NVarChar -- String
SET     @Value = ''

INSERT INTO "IsNullOrEmptyTable"
(
	"Id",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	"p"."Value"
FROM
	"IsNullOrEmptyTable" "p"
WHERE
	Length("p"."Value") = 3

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "IsNullOrEmptyTable"

