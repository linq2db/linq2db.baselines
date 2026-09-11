-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(3) -- String
SET     @Name = 'inc'
DECLARE @Version Integer -- Int32
SET     @Version = 3
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest"
SET
	"Name" = :Name,
	"Version" = "UpsertTest"."Version" + :Version,
	"CreatedAt" = :CreatedAt,
	"CreatedBy" = :CreatedBy,
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :UpdatedBy
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Id",
	r."Name",
	r."Version",
	r."CreatedAt",
	r."CreatedBy",
	r."UpdatedAt",
	r."UpdatedBy"
FROM
	"UpsertTest" r
WHERE
	r."Id" = 1
LIMIT 2

