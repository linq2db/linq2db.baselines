BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "DropTableTest"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

