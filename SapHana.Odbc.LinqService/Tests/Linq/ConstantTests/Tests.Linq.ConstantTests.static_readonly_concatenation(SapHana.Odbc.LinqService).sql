BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestConstantsData"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestConstantsData"
(
	"Id"                Integer       NOT NULL,
	"GuidValue"         Char (36)     NOT NULL,
	"GuidNullableValue" Char (36)         NULL,
	"StringValue"       NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @GuidValue Char(36) -- AnsiStringFixedLength
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @GuidNullableValue Char(36) -- AnsiStringFixedLength
SET     @GuidNullableValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @StringValue NVarChar(8) -- String
SET     @StringValue = 'StrValue'

INSERT INTO "TestConstantsData"
(
	"Id",
	"GuidValue",
	"GuidNullableValue",
	"StringValue"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p NVarChar(9) -- String
SET     @p = 'StrValue1'

SELECT
	"e"."Id",
	"e"."GuidValue",
	"e"."GuidNullableValue",
	"e"."StringValue"
FROM
	"TestConstantsData" "e"
WHERE
	"e"."StringValue" || '1' = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."GuidValue",
	"t1"."GuidNullableValue",
	"t1"."StringValue"
FROM
	"TestConstantsData" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestConstantsData"

