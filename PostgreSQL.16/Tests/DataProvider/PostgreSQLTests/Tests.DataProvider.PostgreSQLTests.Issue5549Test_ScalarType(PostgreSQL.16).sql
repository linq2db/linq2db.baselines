-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = NULL
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-08T06:59:02Z

INSERT INTO "Issue5549Table"
(
	"ClosedAt",
	"CreatedAt"
)
VALUES
(
	:ClosedAt,
	:CreatedAt
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = 2026-06-08T05:59:02Z
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-08T04:59:02Z

INSERT INTO "Issue5549Table"
(
	"ClosedAt",
	"CreatedAt"
)
VALUES
(
	:ClosedAt,
	:CreatedAt
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @fromDate Unknown -- Object
SET     @fromDate = 2026-06-01T06:59:02Z

SELECT
	e."Id",
	e."ClosedAt",
	e."CreatedAt"
FROM
	"Issue5549Table" e
WHERE
	coalesce(e."ClosedAt",e."CreatedAt") >= :fromDate

