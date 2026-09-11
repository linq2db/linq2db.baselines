-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 10
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
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"CreatedBy" = :CreatedBy,
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :UpdatedBy
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 10
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest"
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

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 20
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"UpsertTest"
SET
	"Name" = :Name,
	"Version" = :Version,
	"CreatedAt" = :CreatedAt,
	"CreatedBy" = :CreatedBy,
	"UpdatedAt" = :UpdatedAt,
	"UpdatedBy" = :UpdatedBy
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 20
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest"
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
ORDER BY
	t1."Id"

