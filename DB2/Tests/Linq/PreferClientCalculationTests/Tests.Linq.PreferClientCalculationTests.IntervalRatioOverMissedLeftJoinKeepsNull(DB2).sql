-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("e"."Date2") AS BigInt) - CAST(Days("e"."Date") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("e"."Date2") AS BigInt) - CAST(Midnight_Seconds("e"."Date") AS BigInt)) * 10000000 + (CAST(Microsecond("e"."Date2") AS BigInt) - CAST(Microsecond("e"."Date") AS BigInt)) * 10 AS Float) / CAST((CAST(Days("j"."Date2") AS BigInt) - CAST(Days("j"."Date") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("j"."Date2") AS BigInt) - CAST(Midnight_Seconds("j"."Date") AS BigInt)) * 10000000 + (CAST(Microsecond("j"."Date2") AS BigInt) - CAST(Microsecond("j"."Date") AS BigInt)) * 10 AS Float)
FROM
	"MissedDivisorEntity" "e"
		LEFT JOIN "MissedDivisorEntity" "j" ON "j"."Id" = "e"."Id" + 1000

