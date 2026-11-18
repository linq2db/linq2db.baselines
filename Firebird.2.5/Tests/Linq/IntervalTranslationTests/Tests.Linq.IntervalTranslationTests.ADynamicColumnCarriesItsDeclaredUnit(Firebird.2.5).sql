-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Elapsed"
FROM
	"DynamicDurationRow" "t1"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST("r"."Elapsed" AS DOUBLE PRECISION) / 60
FROM
	"DynamicDurationRow" "r"

