-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Elapsed BigInt -- Int64
SET     @Elapsed = 5400

INSERT INTO "DynamicDurationRow"
(
	"Id",
	"Elapsed"
)
VALUES
(
	:"Id",
	:"Elapsed"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Elapsed"
FROM
	"DynamicDurationRow" "t1"
LIMIT 2

-- SapHana.Native SapHana
SELECT
	CAST("r"."Elapsed" AS Double) / 60
FROM
	"DynamicDurationRow" "r"
LIMIT 2

