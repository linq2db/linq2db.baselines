BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "ValueItem"
(
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "ValueItem"
(
	"Value"
)
VALUES
(
	123
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"row_1"."Value"
FROM
	"ValueItem" "row_1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "ValueItem"

