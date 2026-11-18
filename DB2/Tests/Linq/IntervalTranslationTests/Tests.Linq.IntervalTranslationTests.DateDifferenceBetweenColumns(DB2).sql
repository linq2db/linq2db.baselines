-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
WHERE
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 864000000000 < 12

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"ClosedPeriodRow" "r"
ORDER BY
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 36000000000

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 864000000000,
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 36000000000,
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10 AS Float) / 600000000,
	CAST(((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10) / 864000000000 AS Int),
	CAST(Mod(((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days("r"."OpenedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds("r"."OpenedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond("r"."OpenedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int)
FROM
	"ClosedPeriodRow" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

