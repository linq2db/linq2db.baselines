-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = '2026-01-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-01-01-15.00.00.000000'

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
SET     @StartedOn = '2026-01-01-10.00.00.000000'
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = '2026-01-01-11.00.00.000000'

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
	"x"."Id"
FROM
	"EventRow" "x"
WHERE
	CAST((CAST(Days("x"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10 AS Float) / 36000000000 > 3

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id"
FROM
	"EventRow" "x"
WHERE
	CAST(Mod(((CAST(Days("x"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10) / 36000000000, 24) AS Int) = 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Id"
FROM
	(
		SELECT
			(CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10 as "Taken",
			"r"."Id"
		FROM
			"EventRow" "r"
	) "x"
ORDER BY
	"x"."Taken" DESC

-- DB2 DB2.LUW DB2LUW
SELECT
	(CAST(Days("x"."FinishedOn") AS BigInt) - CAST(Days("x"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("x"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("x"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("x"."FinishedOn") AS BigInt) - CAST(Microsecond("x"."StartedOn") AS BigInt)) * 10
FROM
	"EventRow" "x"
ORDER BY
	"x"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	(CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10
FROM
	"EventRow" "r"
ORDER BY
	"r"."Id"

