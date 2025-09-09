BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"test_insert_or_replace" "t1"
SET
	"name" = ?,
	"updated_by" = ?
WHERE
	"t1"."id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy NVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER3'

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
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy NVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"test_insert_or_replace" "t1"
SET
	"name" = ?,
	"updated_by" = ?
WHERE
	"t1"."id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"
LIMIT 2

