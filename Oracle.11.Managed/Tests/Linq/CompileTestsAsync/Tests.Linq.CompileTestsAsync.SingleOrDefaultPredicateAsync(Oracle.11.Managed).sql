BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AsyncDataTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "AsyncDataTable"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_AsyncDataTable" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "AsyncDataTable" ("Id") VALUES (1)
	INTO "AsyncDataTable" ("Id") VALUES (2)
	INTO "AsyncDataTable" ("Id") VALUES (3)
	INTO "AsyncDataTable" ("Id") VALUES (4)
	INTO "AsyncDataTable" ("Id") VALUES (5)
	INTO "AsyncDataTable" ("Id") VALUES (6)
	INTO "AsyncDataTable" ("Id") VALUES (7)
	INTO "AsyncDataTable" ("Id") VALUES (8)
	INTO "AsyncDataTable" ("Id") VALUES (9)
	INTO "AsyncDataTable" ("Id") VALUES (10)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	:p,
	c_1."Id"
FROM
	"AsyncDataTable" c_1
WHERE
	c_1."Id" = :p AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "AsyncDataTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

