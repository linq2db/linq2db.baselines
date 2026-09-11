-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Elapsed BigInt(8) -- Int64
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

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Elapsed"
FROM
	"DynamicDurationRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST("r"."Elapsed" AS Float) / 60
FROM
	"DynamicDurationRow" "r"
FETCH NEXT 2 ROWS ONLY

