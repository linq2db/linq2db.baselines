﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "test_insert_or_replace"
		(
			"id"         Int          NOT NULL,
			"name"       VarChar(255)     NULL,
			"created_by" VarChar(255)     NULL,
			"updated_by" VarChar(255)     NULL,

			CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY ("id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy Varchar2 -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedBy Varchar2(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" t1
USING (SELECT :Id AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."name" = :Name,
		t1."updated_by" = :UpdatedBy
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."id",
	t1."name",
	t1."created_by",
	t1."updated_by"
FROM
	"test_insert_or_replace" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy Varchar2(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @CreatedBy Varchar2(10) -- String
SET     @CreatedBy = 'TEST_USER1'

MERGE INTO "test_insert_or_replace" t1
USING (SELECT :Id AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."name" = :Name,
		t1."updated_by" = :UpdatedBy
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."id",
	t1."name",
	t1."created_by",
	t1."updated_by"
FROM
	"test_insert_or_replace" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

