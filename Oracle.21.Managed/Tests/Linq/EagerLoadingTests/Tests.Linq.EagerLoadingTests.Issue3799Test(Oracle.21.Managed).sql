BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
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
		CREATE TABLE "Test3799Item"
		(
			"Id"       Int          NOT NULL,
			"ParentId" Int              NULL,
			"Name"     VarChar(255) NOT NULL,

			CONSTRAINT "PK_Test3799Item" PRIMARY KEY ("Id")
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

INSERT ALL
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (1,NULL,'root')
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (2,1,'child 1')
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (3,2,'child 1.1')
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (4,2,'child 1.2')
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (5,1,'child 2')
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (6,5,'child 2.1')
	INTO "Test3799Item" ("Id", "ParentId", "Name") VALUES (7,5,'child 2.1')
SELECT * FROM dual

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	key_data_result."Id",
	key_data_result."Id_1",
	detail_1."Name"
FROM
	(
		SELECT DISTINCT
			detail."Id",
			item_1."Id" as "Id_1"
		FROM
			"Test3799Item" item_1
				INNER JOIN "Test3799Item" detail ON item_1."Id" = detail."ParentId"
	) key_data_result
		INNER JOIN "Test3799Item" detail_1 ON key_data_result."Id" = detail_1."ParentId"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	item_1."Id",
	detail."Name",
	detail."Id"
FROM
	"Test3799Item" item_1
		INNER JOIN "Test3799Item" detail ON item_1."Id" = detail."ParentId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	item_1."Name",
	item_1."Id"
FROM
	"Test3799Item" item_1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

