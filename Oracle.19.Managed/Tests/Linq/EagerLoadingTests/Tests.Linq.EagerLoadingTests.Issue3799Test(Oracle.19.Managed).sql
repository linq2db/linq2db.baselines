BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Name"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Test3799Item" item_1
				OUTER APPLY (
					SELECT
						a_Children."Id"
					FROM
						"Test3799Item" a_Children
					WHERE
						item_1."Id" = a_Children."ParentId"
					FETCH NEXT 1 ROWS ONLY
				) t1
	) m_1
		INNER JOIN "Test3799Item" d ON (m_1."Id" = d."ParentId" OR m_1."Id" IS NULL AND d."ParentId" IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	item_1."Name",
	t1."Name",
	t1."Id"
FROM
	"Test3799Item" item_1
		OUTER APPLY (
			SELECT
				a_Children."Name",
				a_Children."Id"
			FROM
				"Test3799Item" a_Children
			WHERE
				item_1."Id" = a_Children."ParentId"
			FETCH NEXT 1 ROWS ONLY
		) t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Test3799Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

