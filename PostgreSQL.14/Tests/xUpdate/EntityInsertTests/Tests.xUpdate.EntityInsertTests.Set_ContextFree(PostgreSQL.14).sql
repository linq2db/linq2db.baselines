-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @stamp Timestamp -- DateTime2
SET     @stamp = '2026-01-01 10:00:00'::timestamp
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
	:stamp,
	:CreatedBy
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy"
FROM
	"EntityInsertTest" t1
LIMIT 2

