BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3799Item"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3799Item"
(
	"Id"       Int  NOT NULL,
	"ParentId" Int      NULL,
	"Name"     text NOT NULL,

	CONSTRAINT "PK_Test3799Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(1,NULL,'root'),
(2,1,'child 1'),
(3,2,'child 1.1'),
(4,2,'child 1.2'),
(5,1,'child 2'),
(6,5,'child 2.1'),
(7,5,'child 2.1')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Children",
	d."Name"
FROM
	(
		SELECT DISTINCT
			t1."Children"
		FROM
			"Test3799Item" item_1
				LEFT JOIN LATERAL (
					SELECT
						"a_Children"."Id" as "Children"
					FROM
						"Test3799Item" "a_Children"
					WHERE
						item_1."Id" = "a_Children"."ParentId" AND "a_Children"."ParentId" IS NOT NULL
					LIMIT 1
				) t1 ON 1=1
	) m_1
		INNER JOIN "Test3799Item" d ON m_1."Children" = d."ParentId" AND m_1."Children" IS NOT NULL AND d."ParentId" IS NOT NULL OR m_1."Children" IS NULL AND d."ParentId" IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	item_1."Name",
	t1."Name",
	t1."Children"
FROM
	"Test3799Item" item_1
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."Name",
				"a_Children"."Id" as "Children"
			FROM
				"Test3799Item" "a_Children"
			WHERE
				item_1."Id" = "a_Children"."ParentId" AND "a_Children"."ParentId" IS NOT NULL
			LIMIT 1
		) t1 ON 1=1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3799Item"

