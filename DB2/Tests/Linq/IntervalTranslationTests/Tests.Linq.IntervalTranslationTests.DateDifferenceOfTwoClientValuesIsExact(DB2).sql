-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = CAST('2026-01-03-13.30.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('2026-01-03-14.30.00.000000' AS TIMESTAMP(6))

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Ticks BigInt(8) -- Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double(8)
SET     @TotalMilliseconds = 0.1234

SELECT
	@Ticks + "r"."Id",
	@TotalMilliseconds + CAST("r"."Id" AS Float)
FROM
	"EventRow" "r"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"EventRow" "r"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"EventRow" "r"

-- DB2 DB2.LUW DB2LUW
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('2026-01-03-13.30.00.000246' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	"r"."FinishedOn" > @FinishedOn

