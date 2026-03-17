-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."id" as "Id",
	t1."name" as "Name",
	t1."created_by" as "CreatedBy",
	t1."updated_by" as "UpdatedBy"
FROM
	"test_insert_or_replace" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."id" as "Id",
	t1."name" as "Name",
	t1."created_by" as "CreatedBy",
	t1."updated_by" as "UpdatedBy"
FROM
	"test_insert_or_replace" t1
FETCH NEXT 2 ROWS ONLY

