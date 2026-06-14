-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest"
SET
	"Name" = :Name,
	"Version" = "EntityUpdateTest"."Version" + :Version,
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :UpdatedBy
WHERE
	"EntityUpdateTest"."Id" = :Id

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"EntityUpdateTest" t1
LIMIT 2

