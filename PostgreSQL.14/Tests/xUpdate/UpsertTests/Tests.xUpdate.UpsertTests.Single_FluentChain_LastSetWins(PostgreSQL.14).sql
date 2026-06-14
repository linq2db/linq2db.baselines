-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(3) -- String
SET     @Name = 'row'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest" AS t1
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt,
	'second-root',
	:UpdatedAt,
	'second-branch'
)
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"CreatedBy" = 'second-root',
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :UpdatedBy

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

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

