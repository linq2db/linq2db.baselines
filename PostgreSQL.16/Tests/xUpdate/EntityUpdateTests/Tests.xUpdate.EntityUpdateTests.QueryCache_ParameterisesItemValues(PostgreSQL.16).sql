-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(4) -- String
SET     @Name = 'new1'
DECLARE @Version Integer -- Int32
SET     @Version = 5
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
DECLARE @Name Text(4) -- String
SET     @Name = 'new2'
DECLARE @Version Integer -- Int32
SET     @Version = 10
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

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
ORDER BY
	t1."Id"

