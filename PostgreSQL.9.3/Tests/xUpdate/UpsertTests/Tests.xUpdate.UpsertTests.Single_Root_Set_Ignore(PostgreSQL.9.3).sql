-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @modified Timestamp -- DateTime2
SET     @modified = '2026-02-02 09:00:00'::timestamp
DECLARE @UpdatedBy Text(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest"
SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"UpdatedAt" = :modified,
	"UpdatedBy" = :UpdatedBy
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @modified Timestamp -- DateTime2
SET     @modified = '2026-02-02 09:00:00'::timestamp
DECLARE @UpdatedBy Text(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt,
	:modified,
	:UpdatedBy
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"UpsertTest" t1
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @modified Timestamp -- DateTime2
SET     @modified = '2026-02-02 09:00:00'::timestamp
DECLARE @UpdatedBy Text(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest"
SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"UpdatedAt" = :modified,
	"UpdatedBy" = :UpdatedBy
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Name",
	t1."Version",
	t1."CreatedAt",
	t1."CreatedBy",
	t1."UpdatedAt",
	t1."UpdatedBy"
FROM
	"UpsertTest" t1
LIMIT 2

