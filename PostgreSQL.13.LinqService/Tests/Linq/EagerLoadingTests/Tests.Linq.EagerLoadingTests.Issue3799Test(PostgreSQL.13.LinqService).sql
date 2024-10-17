BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3799Item"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3799Item"
(
	"Id"       Int  NOT NULL,
	"ParentId" Int      NULL,
	"Name"     text NOT NULL,

	CONSTRAINT "PK_Test3799Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name Text(4) -- String
SET     @Name = 'root'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1
DECLARE @Name Text(7) -- String
SET     @Name = 'child 1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2
DECLARE @Name Text(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2
DECLARE @Name Text(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1
DECLARE @Name Text(7) -- String
SET     @Name = 'child 2'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 5
DECLARE @Name Text(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 5
DECLARE @Name Text(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO "Test3799Item"
(
	"Id",
	"ParentId",
	"Name"
)
VALUES
(
	:Id,
	:ParentId,
	:Name
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
						item_1."Id" = "a_Children"."ParentId"
					LIMIT 1
				) t1 ON 1=1
	) m_1
		INNER JOIN "Test3799Item" d ON m_1."Children" = d."ParentId" OR m_1."Children" IS NULL AND d."ParentId" IS NULL

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
				item_1."Id" = "a_Children"."ParentId"
			LIMIT 1
		) t1 ON 1=1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3799Item"

