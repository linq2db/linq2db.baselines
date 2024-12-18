BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Isue2424Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Isue2424Table"
(
	"Id"       Integer       NOT NULL,
	"StrValue" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '1'

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '3'

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '5'

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"i"."Id",
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1' AND "i"."StrValue" IS NOT NULL
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Isue2424Table"

