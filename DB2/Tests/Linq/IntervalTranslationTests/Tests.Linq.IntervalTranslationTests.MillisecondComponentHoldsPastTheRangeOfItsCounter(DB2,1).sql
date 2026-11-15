-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = CAST('1970-01-02-00.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('1970-02-03-04.05.06.780000' AS TIMESTAMP(6))

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = CAST('1970-01-02-00.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('2045-06-05-04.03.02.340000' AS TIMESTAMP(6))

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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = CAST('1970-01-02-00.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('1970-01-02-00.02.05.250000' AS TIMESTAMP(6))

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
SELECT
	"r"."StartedOn",
	"r"."FinishedOn"
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(Mod(((CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10) / 10000, 1000) AS Int)
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

