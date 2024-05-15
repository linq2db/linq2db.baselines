BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "HierarchyTree"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "HierarchyTree"
(
	"Id"       Int NOT NULL,
	"ParentId" Int     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 1

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 22
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 2

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 10

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 110
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 111
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 112
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 11

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 200
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 201
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 202
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 20

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 210
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 211
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 212
DECLARE @ParentId Integer -- Int32
SET     @ParentId = 21

INSERT INTO "HierarchyTree"
(
	"Id",
	"ParentId"
)
VALUES
(
	:Id,
	:ParentId
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH RECURSIVE "CTE_1" ("Id")
AS
(
	SELECT
		t."Id"
	FROM
		"HierarchyTree" t
	WHERE
		t."ParentId" IS NULL
),
"CTE_2" ("ParentId", "Id")
AS
(
	SELECT
		t1."ParentId",
		t1."Id"
	FROM
		"HierarchyTree" t1
),
"hierarchyDown" ("Level_1", "Id")
AS
(
	SELECT
		0,
		t2."Id"
	FROM
		"CTE_1" t2
	UNION ALL
	SELECT
		t3."Level_1" + 1,
		t_1."Id"
	FROM
		"hierarchyDown" t3
			INNER JOIN "CTE_2" t_1 ON t_1."ParentId" = t3."Id"
)
SELECT
	COUNT(*)
FROM
	"hierarchyDown" t4

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "HierarchyTree"

