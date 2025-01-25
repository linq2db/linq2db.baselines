BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3472TableDCTX"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue3472TableDCTX"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Issue3472TableDCTX"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	(
		SELECT
			COUNT(*)
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = "t1"."Id"
	)
FROM
	"Issue3472TableDCTX" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue3472TableDCTX"

