-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FluentTemp"

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"   Integer      NOT NULL,
	"Name" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	"ID",
	"Name"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"FluentTemp" "t1"
SET
	"ID" = "t1"."ID",
	"Name" = "t1"."Name"
WHERE
	"t1"."ID" = 1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "FluentTemp"

