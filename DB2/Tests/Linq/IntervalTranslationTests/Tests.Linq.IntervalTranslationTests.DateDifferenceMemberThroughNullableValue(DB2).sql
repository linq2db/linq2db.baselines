-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 864000000000 > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 36000000000 > 0

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = CAST('2026-01-03-13.30.00.000000' AS TIMESTAMP(6))

SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."ClosedOnNullable") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."ClosedOnNullable") AS BigInt)) * 10 AS Float) / 864000000000 > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 36000000000
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10) / 864000000000 AS Int) > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST(Mod(((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int) > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10) / 864000000000 AS Int),
	CAST(Mod(((CAST(Days("r"."ClosedOnNullable") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOnNullable") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int)
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	"r"."Id"

