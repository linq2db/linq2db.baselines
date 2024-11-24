BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Names"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Names"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Addresses"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Addresses"
(
	"Id"   Integer       NOT NULL,
	"Text" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO "Names"
(
	"Id",
	"Name"
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
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO "Names"
(
	"Id",
	"Name"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'address'

INSERT INTO "Addresses"
(
	"Id",
	"Text"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name",
	"arg2"."Id",
	"arg2"."Text"
FROM
	"Names" "tupledArg"
		LEFT JOIN "Addresses" "arg2" ON "tupledArg"."Id" = "arg2"."Id"
ORDER BY
	"tupledArg"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Addresses"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Names"

