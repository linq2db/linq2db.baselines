-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-10-08.15.30.000000' AS TIMESTAMP(6))

UPDATE
	"MeasuredPeriodRow" "r"
SET
	"Elapsed" = CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 864000000000
WHERE
	"r"."Id" = 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."ClosedOn",
	"t1"."Elapsed"
FROM
	"MeasuredPeriodRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-10-08.15.30.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"MeasuredPeriodRow" "r"
WHERE
	"r"."Elapsed" < CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 36000000000

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-10-08.15.30.000000' AS TIMESTAMP(6))

UPDATE
	"MeasuredPeriodRow" "r"
SET
	"Elapsed" = CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days(CAST(@asOf AS timestamp)) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt)) * 10 AS Float) / 36000000000
WHERE
	"r"."Id" = 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."ClosedOn",
	"t1"."Elapsed"
FROM
	"MeasuredPeriodRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-10-08.15.30.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"MeasuredPeriodRow" "r"
WHERE
	"r"."Elapsed" < CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days(CAST(@asOf AS timestamp)) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt)) * 10 AS Float) / 864000000000

