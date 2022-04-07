BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	Add_Days(CURRENT_TIMESTAMP, 1),
	Add_Days(CURRENT_TIMESTAMP, 2)
FROM DUMMY
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

