-- SapHana.Native SapHana
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
	:"Id",
	:"InSeconds",
	:"InTicks",
	:"Undeclared",
	:"UndeclaredSeconds"
)

-- SapHana.Native SapHana
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
LIMIT 1

-- SapHana.Native SapHana
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
LIMIT 1

-- SapHana.Native SapHana
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
	"r"."InSeconds" > :"p"
LIMIT 1

