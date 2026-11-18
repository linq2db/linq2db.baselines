-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- Firebird.3 Firebird3
SELECT
	(
		SELECT
			MIN("t1"."InSeconds")
		FROM
			"DurationRow" "t1"
	),
	(
		SELECT
			MAX("t2"."InSeconds")
		FROM
			"DurationRow" "t2"
	)
FROM
	"DurationRow" "r"
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	(
		SELECT
			MIN("t1"."InSeconds")
		FROM
			"DurationRow" "t1"
	),
	(
		SELECT
			MAX("t2"."InSeconds")
		FROM
			"DurationRow" "t2"
	)
FROM
	"DurationRow" "r"
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @p BigInt -- Int64
SET     @p = 60

SELECT
	(
		SELECT
			MIN("t1"."InSeconds")
		FROM
			"DurationRow" "t1"
	)
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" > @p
FETCH NEXT 1 ROWS ONLY

