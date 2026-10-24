-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = CAST('2026-01-01-10.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('2026-01-05-00.00.00.000000' AS TIMESTAMP(6))

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
SET     @StartedOn = CAST('2026-01-03-00.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('2026-01-03-20.00.00.000000' AS TIMESTAMP(6))

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
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-03-13.30.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10 AS Float) / 36000000000 > 24

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-03-13.30.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
WHERE
	CAST((CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days(CAST(@asOf AS timestamp)) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt)) * 10 AS Float) / 36000000000 > 24

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-03-13.30.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"EventRow" "r"
ORDER BY
	CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10 AS Float) / 600000000

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-03-13.30.00.000000' AS TIMESTAMP(6))

SELECT
	CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10 AS Float) / 864000000000,
	CAST(Mod(((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int)
FROM
	"EventRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

