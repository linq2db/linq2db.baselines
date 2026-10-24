-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed BigInt -- Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed BigInt -- Int64
SET     @Converted_Elapsed = 5400

INSERT INTO "NestedDurationRow"
(
	"Id",
	"Declared",
	"Converted"
)
VALUES
(
	@Id,
	@Declared_Elapsed,
	@Converted_Elapsed
)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Declared",
	"t1"."Converted"
FROM
	"NestedDurationRow" "t1"

-- Firebird.2.5 Firebird
SELECT FIRST 2
	CAST("r"."Declared" AS DOUBLE PRECISION) / 60
FROM
	"NestedDurationRow" "r"

