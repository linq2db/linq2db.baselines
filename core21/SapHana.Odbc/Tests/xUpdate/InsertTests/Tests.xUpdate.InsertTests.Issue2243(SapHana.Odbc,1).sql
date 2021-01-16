BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "test_insert_or_replace"
(
	"id"         Integer       NOT NULL,
	"name"       NVarChar(255)     NULL,
	"created_by" NVarChar(255) NOT NULL,
	"updated_by" NVarChar(255)     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"test_insert_or_replace"
SET
	"test_insert_or_replace"."name" = ?,
	"test_insert_or_replace"."updated_by" = ?
WHERE
	"test_insert_or_replace"."id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy NVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

INSERT INTO "test_insert_or_replace"
(
	"id",
	"name",
	"created_by"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy NVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"test_insert_or_replace"
SET
	"test_insert_or_replace"."name" = ?,
	"test_insert_or_replace"."updated_by" = ?
WHERE
	"test_insert_or_replace"."id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "test_insert_or_replace"

