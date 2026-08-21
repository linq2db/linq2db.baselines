-- Firebird.3 Firebird3
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
	@Id,
	@Elapsed
)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Elapsed"
FROM
	"DynamicDurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	CAST("r"."Elapsed" AS DOUBLE PRECISION) / 60
FROM
	"DynamicDurationRow" "r"
FETCH NEXT 2 ROWS ONLY

