BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "test_insert_or_replace" t1
USING (SELECT 1 AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name"
	)
	VALUES
	(
		1,
		'test'
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

MERGE INTO "test_insert_or_replace" t1
USING (SELECT 1 AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name"
	)
	VALUES
	(
		1,
		'test'
	)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "test_insert_or_replace"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

