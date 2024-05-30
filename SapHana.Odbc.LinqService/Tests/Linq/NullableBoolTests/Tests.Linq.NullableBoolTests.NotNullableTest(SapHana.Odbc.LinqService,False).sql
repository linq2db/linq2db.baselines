BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NotNullableBoolClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NotNullableBoolClass"
(
	"Value" TinyInt NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value  -- Byte
SET     @Value = 1

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value  -- Byte
SET     @Value = 0

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Value"
FROM
	"NotNullableBoolClass" "t"
WHERE
	"t"."Value" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NotNullableBoolClass"

