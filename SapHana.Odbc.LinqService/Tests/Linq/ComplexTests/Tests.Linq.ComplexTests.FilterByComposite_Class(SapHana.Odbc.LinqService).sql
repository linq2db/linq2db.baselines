BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"city"            NVarChar(255)     NULL,
	"user_name"       NVarChar(255)     NULL,
	"street"          NVarChar(255)     NULL,
	"building_number" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Residence_City NVarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street NVarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building  -- Int32
SET     @Residence_Building = 13

INSERT INTO "User"
(
	"city",
	"user_name",
	"street",
	"building_number"
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

SELECT
	"u"."user_name",
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"User" "u"
WHERE
	"u"."city" = 'Springwood' AND
	"u"."city" IS NOT NULL AND
	"u"."street" = 'Elm Street' AND
	"u"."street" IS NOT NULL AND
	"u"."building_number" = 13
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

