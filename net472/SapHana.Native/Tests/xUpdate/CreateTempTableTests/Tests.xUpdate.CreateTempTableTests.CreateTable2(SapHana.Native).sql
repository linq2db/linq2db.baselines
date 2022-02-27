BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TempTable"

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TempTable"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "TempTable"
(
	"ID"
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t"."ID"
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t"."ID"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TempTable"

