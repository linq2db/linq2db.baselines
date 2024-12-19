BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MainTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "MainTable"
(
	"Id"    Integer       NOT NULL,
	"Field" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
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
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Field NVarChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO "MainTable"
(
	"Id",
	"Field"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AssociatedTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AssociatedTable"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "AssociatedTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3

INSERT INTO "AssociatedTable"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"AssociatedTable" "p"
				LEFT JOIN "MainTable" "a_MainOptional" ON "p"."Id" = "a_MainOptional"."Id"
		WHERE
			"p"."Id" = ? AND "MainTable"."Id" = "a_MainOptional"."Id" AND
			("MainTable"."Field" = "a_MainOptional"."Field" OR "MainTable"."Field" IS NULL AND "a_MainOptional"."Field" IS NULL)
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Field"
FROM
	"MainTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AssociatedTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "MainTable"

