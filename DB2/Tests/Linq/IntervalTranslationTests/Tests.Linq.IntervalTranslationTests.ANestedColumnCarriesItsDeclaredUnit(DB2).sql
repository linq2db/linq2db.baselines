-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed BigInt(8) -- Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed BigInt(8) -- Int64
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

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Declared",
	"t1"."Converted"
FROM
	"NestedDurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("r"."Declared" AS Float) / 60
FROM
	"NestedDurationRow" "r"
FETCH NEXT 2 ROWS ONLY

