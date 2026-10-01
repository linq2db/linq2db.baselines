-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 864000000000 > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 36000000000 > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 600000000 > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST(((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10) / 864000000000 AS Int) > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOnNullable") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOnNullable") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOnNullable") AS BigInt)) * 10 AS Float) / 864000000000 > 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
ORDER BY
	CAST((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 864000000000

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond('2026-10-01-00.00.00.000000') AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 864000000000
FROM
	"Issue5777Row" "r"
ORDER BY
	"r"."Id"

