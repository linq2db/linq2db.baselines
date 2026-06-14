-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'async'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt,
	:CreatedBy
)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
LIMIT 2

