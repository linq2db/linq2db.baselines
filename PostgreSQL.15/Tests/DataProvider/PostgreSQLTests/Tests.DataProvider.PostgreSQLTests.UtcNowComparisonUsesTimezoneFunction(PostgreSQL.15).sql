-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."Timestamp" = timezone('UTC', now())

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."TimestampN" = timezone('UTC', now())

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."TimestampTZ" = timezone('UTC', now())::TimeStampTZ

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."TimestampTZN" = timezone('UTC', now())::TimeStampTZ

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."Timestamp"::TimeStampTZ = now()

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."TimestampN"::TimeStampTZ = now()

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."TimestampTZ" = now()

-- PostgreSQL.15 PostgreSQL12
SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"UtcNowComparisonTable" r
WHERE
	r."TimestampTZN" = now()

