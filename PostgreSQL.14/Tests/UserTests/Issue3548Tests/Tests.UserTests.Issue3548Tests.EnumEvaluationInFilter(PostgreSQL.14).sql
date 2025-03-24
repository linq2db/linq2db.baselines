BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "User";DROP TYPE IF EXISTS user_type_enum;CREATE TYPE user_type_enum AS ENUM('org', 'org_user');

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	x."Id"
FROM
	"User" x
WHERE
	x."Type" = 'org' AND x."Id" = :Id OR x."Type" = 'org_user' AND x."OrganizationId" = :Id
ORDER BY
	x."Id"

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @OrganizationId Integer -- Int32
SET     @OrganizationId = 2

SELECT
	x."Id"
FROM
	"User" x
WHERE
	x."Type" = 'org' AND x."Id" = :Id OR x."Type" = 'org' AND x."Id" = :OrganizationId OR
	x."Type" = 'org_user' AND x."OrganizationId" = :OrganizationId
ORDER BY
	x."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TYPE IF EXISTS user_type_enum;

