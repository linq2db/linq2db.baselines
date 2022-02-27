BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "T1351Model"
(
	"ID"           Integer NOT NULL,
	"TestField"    TinyInt NOT NULL,
	"TestNullable" TinyInt     NULL
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."ID",
	"_"."TestField",
	"_"."TestNullable"
FROM
	"T1351Model" "_"
WHERE
	"_"."TestField" = 0

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"_"."ID",
	"_"."TestField",
	"_"."TestNullable"
FROM
	"T1351Model" "_"
WHERE
	("_"."TestNullable" IS NULL OR "_"."TestNullable" <> 1)

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "T1351Model"

