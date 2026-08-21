-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
SELECT
	"t1"."Id",
	"t1"."Elapsed"
FROM
	"DynamicDurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.4 Firebird4
SELECT
	CAST("r"."Elapsed" AS DOUBLE PRECISION) / 60
FROM
	"DynamicDurationRow" "r"
FETCH NEXT 2 ROWS ONLY

