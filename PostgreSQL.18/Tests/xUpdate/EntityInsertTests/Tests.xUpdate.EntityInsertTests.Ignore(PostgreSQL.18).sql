-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt
)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
LIMIT 2

