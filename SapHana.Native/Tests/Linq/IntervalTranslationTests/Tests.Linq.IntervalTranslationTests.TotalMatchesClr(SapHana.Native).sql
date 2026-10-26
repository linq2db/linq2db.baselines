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
	CAST("r"."InSeconds" AS Double) / 3600,
	CAST("r"."InSeconds" AS Double) / 60,
	CAST("r"."InTicks" AS Double) / 36000000000
FROM
	"DurationRow" "r"
LIMIT 2

