-- PostgreSQL.13 PostgreSQL

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

-- PostgreSQL.13 PostgreSQL

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

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZ" = timezone('UTC', now())

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZN" = timezone('UTC', now())

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."Timestamp"::TimeStampTZ = timezone('UTC', now())

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampN"::TimeStampTZ = timezone('UTC', now())

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZ" = timezone('UTC', now())

-- PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Timestamp",
	r."TimestampTZ",
	r."TimestampN",
	r."TimestampTZN"
FROM
	"Issue5325Table" r
WHERE
	r."TimestampTZN" = timezone('UTC', now())

