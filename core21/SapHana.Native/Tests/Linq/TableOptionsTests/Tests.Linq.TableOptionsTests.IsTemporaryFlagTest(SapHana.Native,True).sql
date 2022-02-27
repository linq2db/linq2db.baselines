BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "IsTemporaryTable"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"IsTemporaryTable" "t1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "IsTemporaryTable"

