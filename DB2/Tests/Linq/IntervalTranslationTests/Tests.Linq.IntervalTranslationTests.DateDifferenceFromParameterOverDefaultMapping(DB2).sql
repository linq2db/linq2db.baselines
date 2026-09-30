-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = '2026-01-10-08.15.30.000000'

SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 864000000000 > 0

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = '2026-01-10-08.15.30.000000'

SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
WHERE
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days(CAST(@asOf AS timestamp)) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt)) * 10 AS Float) / 36000000000 > 0

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = '2026-01-10-08.15.30.000000'

SELECT
	"r"."Id"
FROM
	"Issue5777Row" "r"
ORDER BY
	CAST((CAST(Days(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Days("r"."ClosedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt)) * 10000000 + (CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt) - CAST(Microsecond("r"."ClosedOn") AS BigInt)) * 10 AS Float) / 600000000

-- DB2 DB2.LUW DB2LUW
DECLARE @asOf Timestamp(20) -- DateTime
SET     @asOf = '2026-01-10-08.15.30.000000'

SELECT
	CAST((CAST(Days("r"."ClosedOn") AS BigInt) - CAST(Days(CAST(@asOf AS timestamp)) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."ClosedOn") AS BigInt) - CAST(Midnight_Seconds(CAST(@asOf AS timestamp)) AS BigInt)) * 10000000 + (CAST(Microsecond("r"."ClosedOn") AS BigInt) - CAST(Microsecond(CAST(@asOf AS timestamp)) AS BigInt)) * 10 AS Float) / 36000000000
FROM
	"Issue5777Row" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

