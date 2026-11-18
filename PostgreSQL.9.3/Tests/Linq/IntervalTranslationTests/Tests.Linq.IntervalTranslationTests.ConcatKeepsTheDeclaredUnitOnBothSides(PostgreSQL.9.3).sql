-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 5400

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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Source",
	t1."Duration",
	t1."Duration_1"
FROM
	(
		SELECT
			1::Int as "Source",
			r."InSeconds" as "Duration",
			NULL::BigInt as "Duration_1"
		FROM
			"DurationRow" r
		UNION ALL
		SELECT
			2::Int as "Source",
			NULL::BigInt as "Duration",
			r_1."InTicks" as "Duration_1"
		FROM
			"DurationRow" r_1
	) t1
ORDER BY
	t1."Source"

