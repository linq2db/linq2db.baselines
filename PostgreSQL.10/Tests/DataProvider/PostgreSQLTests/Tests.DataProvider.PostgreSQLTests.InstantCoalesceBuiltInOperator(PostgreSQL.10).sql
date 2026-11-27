-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = NULL
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2020-01-01T00:00:00Z

INSERT INTO "InstantColumnsTable"
(
	"ClosedAt",
	"CreatedAt"
)
VALUES
(
	:ClosedAt,
	:CreatedAt
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ClosedAt TimestampTz -- DateTime
SET     @ClosedAt = 2019-12-31T23:00:00Z
DECLARE @CreatedAt TimestampTz -- DateTime
SET     @CreatedAt = 2019-12-31T22:00:00Z

INSERT INTO "InstantColumnsTable"
(
	"ClosedAt",
	"CreatedAt"
)
VALUES
(
	:ClosedAt,
	:CreatedAt
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @fromDate TimestampTz -- DateTime
SET     @fromDate = 2019-12-25T00:00:00Z

SELECT
	e."Id",
	e."ClosedAt",
	e."CreatedAt"
FROM
	"InstantColumnsTable" e
WHERE
	Coalesce(e."ClosedAt", e."CreatedAt") >= :fromDate

