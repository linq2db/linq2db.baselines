BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConditionalData"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ConditionalData"
(
	"Id"         Integer       NOT NULL,
	"StringProp" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String1'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String2'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
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
DECLARE @StringProp NVarChar -- String
SET     @StringProp = NULL

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String4'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
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
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String5'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @StringProp NVarChar -- String
SET     @StringProp = NULL

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String7'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 8
DECLARE @StringProp NVarChar(7) -- String
SET     @StringProp = 'String8'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 9
DECLARE @StringProp NVarChar -- String
SET     @StringProp = NULL

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 10
DECLARE @StringProp NVarChar(8) -- String
SET     @StringProp = 'String10'

INSERT INTO "ConditionalData"
(
	"Id",
	"StringProp"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = NULL

SELECT
	"x"."Id",
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN 1
		ELSE 0
	END,
	"x"."StringProp",
	"x"."StringProp" || '2'
FROM
	"ConditionalData" "x"
WHERE
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN '2'
		WHEN "x"."StringProp" = '2' THEN "x"."StringProp"
		ELSE "x"."StringProp" || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN "x"."StringProp" = '1' OR "x"."StringProp" IS NULL THEN ?
		WHEN "x"."StringProp" = '2' THEN 1
		ELSE 2
	END = 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."StringProp"
FROM
	"ConditionalData" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConditionalData"

