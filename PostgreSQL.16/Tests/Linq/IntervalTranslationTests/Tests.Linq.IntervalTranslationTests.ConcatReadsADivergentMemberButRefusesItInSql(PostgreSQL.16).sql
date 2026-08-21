-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r_2."Source",
	r_2."Duration",
	r_2."Duration_1"
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
	) r_2
ORDER BY
	r_2."Source"

