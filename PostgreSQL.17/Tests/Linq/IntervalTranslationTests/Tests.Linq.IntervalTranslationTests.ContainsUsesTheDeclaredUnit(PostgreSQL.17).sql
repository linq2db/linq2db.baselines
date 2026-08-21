-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 900
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 900

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 1800

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 2700
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 2700

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InSeconds" IN (900, 2700)
ORDER BY
	r."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	r."InTicks" IN (9000000000, 27000000000)
ORDER BY
	r."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."InSeconds" IN (900, 2700)
FROM
	"DurationRow" r
ORDER BY
	r."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 1800

SELECT
	CASE
		WHEN :InSeconds IN (
			SELECT
				r."InSeconds"
			FROM
				"DurationRow" r
		)
			THEN True
		ELSE False
	END

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 54000000000

SELECT
	CASE
		WHEN :InTicks IN (
			SELECT
				r."InTicks"
			FROM
				"DurationRow" r
		)
			THEN True
		ELSE False
	END

