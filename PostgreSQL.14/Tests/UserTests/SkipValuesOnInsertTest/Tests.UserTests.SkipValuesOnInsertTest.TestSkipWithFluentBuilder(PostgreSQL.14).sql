-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text -- String
SET     @Name = NULL

INSERT INTO "SkipOnInsertFluent"
(
	"Id",
	"Name"
)
VALUES
(
	:Id,
	:Name
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t."Id",
	t."Name",
	t."Age"
FROM
	"SkipOnInsertFluent" t
WHERE
	t."Id" = 1
LIMIT 1

