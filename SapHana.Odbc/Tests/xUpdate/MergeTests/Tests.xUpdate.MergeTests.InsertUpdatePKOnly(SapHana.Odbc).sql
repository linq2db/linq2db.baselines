BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PKOnlyTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PKOnlyTable"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO "PKOnlyTable"
(
	"ID"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "PKOnlyTable" "Target"
USING (
	SELECT 1 AS "source_ID" FROM DUMMY
	UNION ALL
	SELECT 2 FROM DUMMY
	UNION ALL
	SELECT 3 FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	"ID"
)
VALUES
(
	"Source"."source_ID"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID"
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PKOnlyTable"

