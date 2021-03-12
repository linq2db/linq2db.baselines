﻿BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MainTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "MainTable"
		(
			"Id"    Int          NOT NULL,
			"Field" VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "MainTable" ("Id", "Field") VALUES (1,'value 1')
	INTO "MainTable" ("Id", "Field") VALUES (2,'value 2')
	INTO "MainTable" ("Id", "Field") VALUES (3,'value 3')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AssociatedTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "AssociatedTable"
		(
			"Id" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "AssociatedTable" ("Id") VALUES (1)
	INTO "AssociatedTable" ("Id") VALUES (3)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 3

UPDATE
	"MainTable"
SET
	"MainTable"."Field" = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MainTable" t1
				INNER JOIN "AssociatedTable" a_AssociatedRequired ON t1."Id" = a_AssociatedRequired."Id"
				INNER JOIN "MainTable" a_MainRequired ON a_AssociatedRequired."Id" = a_MainRequired."Id"
		WHERE
			t1."Id" = :id AND "MainTable"."Id" = t1."Id" AND ("MainTable"."Field" = t1."Field" OR "MainTable"."Field" IS NULL AND t1."Field" IS NULL)
	)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Field"
FROM
	"MainTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AssociatedTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MainTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

