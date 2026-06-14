-- PostgreSQL.13 PostgreSQL
DECLARE @Name Text(1) -- String
SET     @Name = 'x'
DECLARE @Version Integer -- Int32
SET     @Version = 5
DECLARE @stamp Timestamp -- DateTime2
SET     @stamp = '2026-06-01'::date
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest"
SET
	"Name" = :Name,
	"Version" = :Version,
	"UpdatedAt" = :stamp,
	"UpdatedBy" = :UpdatedBy
WHERE
	"EntityUpdateTest"."Id" = :Id

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"EntityUpdateTest" t1
LIMIT 2

