BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CURRENT_TIMESTAMP
FROM DUMMY
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

