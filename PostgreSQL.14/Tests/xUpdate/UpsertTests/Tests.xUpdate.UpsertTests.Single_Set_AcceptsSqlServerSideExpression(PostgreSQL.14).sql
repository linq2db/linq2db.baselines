-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL

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
	CURRENT_TIMESTAMP,
	:CreatedBy,
	:UpdatedAt,
	:UpdatedBy
)
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"CreatedBy" = :CreatedBy,
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
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
	:CreatedBy,
	:UpdatedAt,
	:UpdatedBy
)
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"CreatedBy" = :CreatedBy,
	"UpdatedAt" = CURRENT_TIMESTAMP,
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
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
	CURRENT_TIMESTAMP,
	:CreatedBy,
	:UpdatedAt,
	:UpdatedBy
)
ON CONFLICT ("Id") DO UPDATE SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = CURRENT_TIMESTAMP,
	"CreatedBy" = :CreatedBy,
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
	r."Id" = 2
LIMIT 2

