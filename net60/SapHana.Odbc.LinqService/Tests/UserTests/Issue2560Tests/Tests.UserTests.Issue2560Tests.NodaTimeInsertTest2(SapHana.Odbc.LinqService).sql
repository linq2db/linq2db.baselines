BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DataClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DataClass"
(
	"Id"    Integer   NOT NULL,
	"Value" Timestamp NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @Value  -- DateTime
SET     @Value = '2020-02-29 17:54:55.123'

INSERT INTO "DataClass"
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
	"t1"."Id",
	"t1"."Value"
FROM
	"DataClass" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DataClass"

