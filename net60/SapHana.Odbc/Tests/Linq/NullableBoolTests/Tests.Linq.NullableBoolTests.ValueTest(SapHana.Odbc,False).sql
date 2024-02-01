﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NullableBoolClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NullableBoolClass"
(
	"Value" TinyInt     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value  -- Byte
SET     @Value = NULL

INSERT INTO "NullableBoolClass"
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
SET     @Value = 1

INSERT INTO "NullableBoolClass"
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

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	("t"."Value" <> ? OR "t"."Value" IS NULL)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value  -- Byte
SET     @value = 0

SELECT
	"t"."Value"
FROM
	"NullableBoolClass" "t"
WHERE
	"t"."Value" <> ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NullableBoolClass"

