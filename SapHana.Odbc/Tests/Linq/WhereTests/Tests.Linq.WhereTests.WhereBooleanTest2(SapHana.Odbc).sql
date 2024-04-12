BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WhereCases"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "WhereCases"
(
	"Id"                Integer NOT NULL,
	"BoolValue"         TinyInt NOT NULL,
	"NullableBoolValue" TinyInt     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = 1

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = 1

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = 1

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 11
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 12
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = 0

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 13
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = NULL

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 14
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = 0

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 15
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 0
DECLARE @NullableBoolValue  -- Byte
SET     @NullableBoolValue = 0

INSERT INTO "WhereCases"
(
	"Id",
	"BoolValue",
	"NullableBoolValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."BoolValue",
	"t1"."NullableBoolValue"
FROM
	"WhereCases" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 0 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 1 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 1 AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 1 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 1 AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 0 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 0 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	("t"."NullableBoolValue" = 0 OR "t"."NullableBoolValue" IS NULL) AND
	"t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT (("t"."NullableBoolValue" = 0 OR "t"."NullableBoolValue" IS NULL) AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."NullableBoolValue" = 1 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."NullableBoolValue" = 1 AND "t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."NullableBoolValue" = 1 AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."NullableBoolValue" = 1 AND "t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."NullableBoolValue" IS NULL AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."NullableBoolValue" IS NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."NullableBoolValue" IS NULL AND "t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."NullableBoolValue" IS NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 0 AND ("t"."NullableBoolValue" = 0 OR "t"."NullableBoolValue" IS NULL) AND
	"t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND ("t"."NullableBoolValue" = 0 OR "t"."NullableBoolValue" IS NULL) AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND ("t"."NullableBoolValue" = 0 OR "t"."NullableBoolValue" IS NULL)) AND
	"t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT (NOT ("t"."BoolValue" = 0 AND ("t"."NullableBoolValue" = 0 OR "t"."NullableBoolValue" IS NULL)) AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	"t"."BoolValue" = 0 AND "t"."NullableBoolValue" = 0 AND
	"t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND "t"."NullableBoolValue" = 0 AND "t"."NullableBoolValue" IS NOT NULL AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT ("t"."BoolValue" = 0 AND "t"."NullableBoolValue" = 0 AND "t"."NullableBoolValue" IS NOT NULL) AND
	"t"."Id" > 0

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue",
	"t"."NullableBoolValue"
FROM
	"WhereCases" "t"
WHERE
	NOT (NOT ("t"."BoolValue" = 0 AND "t"."NullableBoolValue" = 0 AND "t"."NullableBoolValue" IS NOT NULL) AND "t"."Id" > 0)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WhereCases"

