-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10 AS Float) / 864000000000,
	CAST(((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 864000000000 AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10 AS Float) / 864000000000 > 1

