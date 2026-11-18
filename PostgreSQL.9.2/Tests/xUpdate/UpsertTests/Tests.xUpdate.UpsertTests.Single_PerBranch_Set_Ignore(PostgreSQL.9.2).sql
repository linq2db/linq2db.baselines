-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @updateTime Timestamp -- DateTime2
SET     @updateTime = '2026-01-01 12:00:00'::timestamp
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest"
SET
	"Name" = :Name,
	"Version" = :Version,
	"UpdatedAt" = :updateTime,
	"UpdatedBy" = 'system'
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @insertTime Timestamp -- DateTime2
SET     @insertTime = '2026-01-01 10:00:00'::timestamp

INSERT INTO "UpsertTest"
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
	:insertTime,
	'system'
)

-- PostgreSQL.9.2 PostgreSQL
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

-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @updateTime Timestamp -- DateTime2
SET     @updateTime = '2026-01-01 12:00:00'::timestamp
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest"
SET
	"Name" = :Name,
	"Version" = :Version,
	"UpdatedAt" = :updateTime,
	"UpdatedBy" = 'system'
WHERE
	"UpsertTest"."Id" = :Id

-- PostgreSQL.9.2 PostgreSQL
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

