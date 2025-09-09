BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "FluentTemp"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

CREATE COLUMN TABLE "FluentTemp"
(
	"ID"   Integer      NOT NULL,
	"Name" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

UPDATE
	"FluentTemp" "t1"
SET
	"ID" = "t1"."ID",
	"Name" = "t1"."Name"
WHERE
	"t1"."ID" = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

DROP TABLE "FluentTemp"

