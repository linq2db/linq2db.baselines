-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."Timestamp" = timezone('UTC', now())

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampN" = timezone('UTC', now())

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZ" = timezone('UTC', now())::TimeStampTZ

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZN" = timezone('UTC', now())::TimeStampTZ

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."Timestamp"::TimeStampTZ = now()

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampN"::TimeStampTZ = now()

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZ" = now()

-- PostgreSQL.18 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZN" = now()

