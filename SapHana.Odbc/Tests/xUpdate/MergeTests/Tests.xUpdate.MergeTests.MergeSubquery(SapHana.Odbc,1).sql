-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MergeTemp"
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

INSERT INTO "MergeTemp"
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
	"MergeTemp" "t1"
SET
	"ID" = "t1"."ID",
	"Name" = "t1"."Name"
WHERE
	"t1"."ID" = (
		SELECT
			"t"."ID"
		FROM
			"MergeTemp" "t"
		WHERE
			"t"."Name" = 'John'
	)

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MergeTemp"

