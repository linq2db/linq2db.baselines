BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WhereWithBool"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "WhereWithBool"
(
	"Id"        Integer NOT NULL,
	"BoolValue" TinyInt NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BoolValue  -- Byte
SET     @BoolValue = 1

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."BoolValue"
FROM
	"WhereWithBool" "t"
WHERE
	(
		SELECT
			"x"."BoolValue"
		FROM
			"WhereWithBool" "x"
		WHERE
			"x"."Id" = 1
	) = 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "WhereWithBool"

