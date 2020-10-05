BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "test_insert_or_replace"
(
	"id"         Integer       NOT NULL,
	"name"       NVarChar(255)     NULL,
	"created_by" NVarChar(255) NOT NULL,
	"updated_by" NVarChar(255)     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @Id_1_1_1_1_1_1_1  -- Int32
SET     @Id_1_1_1_1_1_1_1 = 1

UPDATE
	"test_insert_or_replace"
SET
	"test_insert_or_replace"."name" = :"Name",
	"test_insert_or_replace"."updated_by" = NULL
WHERE
	"test_insert_or_replace"."id" = :"Id_1_1_1_1_1_1_1"

BeforeExecute
-- SapHana.Native SapHana
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
	:"Id",
	:"Name",
	:"CreatedBy"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy NVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @Id_1_1_1_1_1_1_1_1  -- Int32
SET     @Id_1_1_1_1_1_1_1_1 = 1

UPDATE
	"test_insert_or_replace"
SET
	"test_insert_or_replace"."name" = :"Name",
	"test_insert_or_replace"."updated_by" = :"UpdatedBy"
WHERE
	"test_insert_or_replace"."id" = :"Id_1_1_1_1_1_1_1_1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"t1"."id",
	"t1"."name",
	"t1"."created_by",
	"t1"."updated_by"
FROM
	"test_insert_or_replace" "t1"
LIMIT :"take"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "test_insert_or_replace"

