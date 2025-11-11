-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TempTable"
(
	"Name" NVarChar(20) NOT NULL,

	PRIMARY KEY ("Name")
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
(
	?
)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Name"
FROM
	"Person" "p"
		INNER JOIN "TempTable" "t" ON "p"."FirstName" = "t"."Name"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TempTable"

