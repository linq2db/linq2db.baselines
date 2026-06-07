-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = NULL
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-07T22:02:13Z

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = 2026-06-07T21:02:13Z
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2026-06-07T20:02:13Z

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @fromDate TimestampTz -- DateTime
SET     @fromDate = 2026-05-31T22:02:13Z

SELECT
	e."Id",
	e."ClosedAt",
	e."CreatedAt"
FROM
	"Issue5549Table" e
WHERE
	Coalesce(e."ClosedAt", e."CreatedAt") >= :fromDate

