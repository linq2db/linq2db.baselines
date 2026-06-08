-- PostgreSQL.15 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = NULL
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-08T14:46:59Z

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

-- PostgreSQL.15 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = 2026-06-08T13:46:59Z
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-08T12:46:59Z

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

-- PostgreSQL.15 PostgreSQL
DECLARE @fromDate TimestampTz -- DateTime
SET     @fromDate = 2026-06-01T14:46:59Z

SELECT
	e."Id",
	e."ClosedAt",
	e."CreatedAt"
FROM
	"Issue5549Table" e
WHERE
	Coalesce(e."ClosedAt", e."CreatedAt") >= :fromDate

