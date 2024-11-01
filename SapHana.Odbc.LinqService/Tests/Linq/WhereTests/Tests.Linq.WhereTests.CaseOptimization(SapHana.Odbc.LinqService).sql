BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WhereWithString"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "WhereWithString"
(
	"Id"          Integer       NOT NULL,
	"StringValue" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringValue NVarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"x"."StringValue"
FROM
	"WhereWithString" "x"
WHERE
	"x"."StringValue" LIKE '%Str%' ESCAPE '~' AND "x"."StringValue" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WhereWithString"

