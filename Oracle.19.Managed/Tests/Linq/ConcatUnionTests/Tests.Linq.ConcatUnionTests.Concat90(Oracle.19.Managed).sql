BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestEntity1"';
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
		CREATE TABLE "TestEntity1"
		(
			"Id"     Int          NOT NULL,
			"Field1" VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestEntity2"';
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
		CREATE TABLE "TestEntity2"
		(
			"Id"     Int          NOT NULL,
			"Field1" VarChar(255)     NULL
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

SELECT
	t1."Id",
	t1."Field1",
	t2."Id",
	t2."Field1"
FROM
	"TestEntity1" t1
		LEFT JOIN "TestEntity2" t2 ON t1."Id" = t2."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	t2."Id",
	t2."Field1"
FROM
	"TestEntity2" t2
		LEFT JOIN "TestEntity1" t1 ON t2."Id" = t1."Id"
WHERE
	t1."Id" IS NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field1",
	NULL,
	NULL,
	NULL,
	t2."Id",
	t2."Id",
	t2."Field1",
	NULL,
	NULL
FROM
	"TestEntity1" t1
		LEFT JOIN "TestEntity2" t2 ON t1."Id" = t2."Id"
UNION ALL
SELECT
	NULL,
	NULL,
	t1_1."Id",
	t1_1."Id",
	t1_1."Field1",
	NULL,
	NULL,
	NULL,
	t2_1."Id",
	t2_1."Field1"
FROM
	"TestEntity2" t2_1
		LEFT JOIN "TestEntity1" t1_1 ON t2_1."Id" = t1_1."Id"
WHERE
	t1_1."Id" IS NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestEntity2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestEntity1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

