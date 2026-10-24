-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10 AS Float) / 864000000000
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 864000000000 AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(Mod(((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(Mod(((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 600000000, 60) AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(Mod(((CAST(Days("x"."StartedOn") AS BigInt) - CAST(Days("b"."FinishedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."StartedOn") AS BigInt) - CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."StartedOn") AS BigInt) - CAST(Microsecond("b"."FinishedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int)
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	CAST((CAST(Days("x"."StartedOn") AS BigInt) - CAST(Days("b"."FinishedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."StartedOn") AS BigInt) - CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."StartedOn") AS BigInt) - CAST(Microsecond("b"."FinishedOn") AS BigInt)) * 10 AS Float) / 36000000000
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Hours Integer(4) -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Mod(((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int) = @Hours

-- DB2 DB2.LUW DB2LUW
DECLARE @Minutes Integer(4) -- Int32
SET     @Minutes = 15

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Mod(((CAST(Days("b"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("b"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 600000000, 60) AS Int) = @Minutes

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST((CAST(Days("x"."StartedOn") AS BigInt) - CAST(Days("b"."FinishedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."StartedOn") AS BigInt) - CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."StartedOn") AS BigInt) - CAST(Microsecond("b"."FinishedOn") AS BigInt)) * 10 AS Float) / 36000000000 < -1

-- DB2 DB2.LUW DB2LUW
DECLARE @Hours Integer(4) -- Int32
SET     @Hours = 3

SELECT
	"x"."Id"
FROM
	"OuterJoinLeft" "x"
		LEFT JOIN "OuterJoinRight" "b" ON "b"."Id" = "x"."Id"
WHERE
	CAST(Mod(((CAST(Days("x"."StartedOn") AS BigInt) - CAST(Days("b"."FinishedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."StartedOn") AS BigInt) - CAST(Midnight_Seconds("b"."FinishedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."StartedOn") AS BigInt) - CAST(Microsecond("b"."FinishedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int) = -@Hours

