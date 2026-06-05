-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = NULL
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-05T19:51:52Z

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = 2026-06-05T18:51:52Z
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-05T17:51:52Z

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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @fromDate TimestampTz -- DateTime
SET     @fromDate = 2026-05-29T19:51:52Z

SELECT
	e."Id",
	e."ClosedAt",
	e."CreatedAt"
FROM
	"Issue5549Table" e
WHERE
	Coalesce(e."ClosedAt", e."CreatedAt") >= :fromDate

