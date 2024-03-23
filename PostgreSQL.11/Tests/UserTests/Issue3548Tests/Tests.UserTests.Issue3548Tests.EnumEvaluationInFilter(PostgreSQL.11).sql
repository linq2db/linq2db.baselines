BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User";DROP TYPE IF EXISTS user_type_enum;CREATE TYPE user_type_enum AS ENUM('org', 'org_user');

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "User"
(
	"Id"             Int            NOT NULL,
	"Type"           user_type_enum NOT NULL,
	"OrganizationId" Int                NULL,

	CONSTRAINT "PK_User" PRIMARY KEY ("Id")
)

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

INSERT INTO "User"
(
	"Id",
	"Type",
	"OrganizationId"
)
VALUES
(1,'org',NULL),
(2,'org',NULL),
(3,'org_user',1),
(4,'org_user',2)

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1

SELECT
	x."Id"
FROM
	"User" x
WHERE
	(x."Type" = 'org' AND x."Id" = :Id OR x."Type" = 'org_user' AND x."OrganizationId" = :Id_1)
ORDER BY
	x."Id"

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @OrganizationId Integer -- Int32
SET     @OrganizationId = 2

SELECT
	x."Id"
FROM
	"User" x
WHERE
	(x."Type" = 'org' AND x."Id" = :Id OR x."Type" = 'org' AND x."Id" = :OrganizationId OR x."Type" = 'org_user' AND x."OrganizationId" = :OrganizationId)
ORDER BY
	x."Id"

BeforeExecute
--  PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TYPE IF EXISTS user_type_enum;

