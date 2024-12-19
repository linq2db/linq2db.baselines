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
	"m_1"."Id",
	"d"."Id",
	"d"."Text"
FROM
	(
		SELECT DISTINCT
			"Item1"."Id"
		FROM
			"Names" "Item1"
	) "m_1"
		LEFT JOIN "Addresses" "d" ON "m_1"."Id" = "d"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"tupledArg"."Id",
	"tupledArg"."Name"
FROM
	"Names" "tupledArg"
ORDER BY
	"tupledArg"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Addresses"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Names"

