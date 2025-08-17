BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedBy Varchar2(10) -- String
SET     @CreatedBy = 'TEST_USER3'

MERGE INTO "test_insert_or_replace" t1
USING (SELECT :Id AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"name" = :Name,
		"updated_by" = :UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name",
		"created_by"
	)
	VALUES
	(
		:Id,
		:Name,
		:CreatedBy
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."id",
	t1."name",
	t1."created_by",
	t1."updated_by"
FROM
	"test_insert_or_replace" t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy Varchar2(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
DECLARE @CreatedBy Varchar2(10) -- String
SET     @CreatedBy = 'TEST_USER3'

MERGE INTO "test_insert_or_replace" t1
USING (SELECT :Id AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"name" = :Name,
		"updated_by" = :UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name",
		"created_by"
	)
	VALUES
	(
		:Id,
		:Name,
		:CreatedBy
	)

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1."id",
	t1."name",
	t1."created_by",
	t1."updated_by"
FROM
	"test_insert_or_replace" t1
WHERE
	ROWNUM <= 2

