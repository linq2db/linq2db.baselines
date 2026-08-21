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
	"t1"."Id",
	"t1"."Taken"
FROM
	(
		SELECT
			CAST((CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10 AS Float) / 36000000000 as "TotalHours",
			"r"."Id",
			(CAST(Days("r"."FinishedOn") AS BigInt) - CAST(Days("r"."StartedOn") AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("r"."FinishedOn") AS BigInt) - CAST(Midnight_Seconds("r"."StartedOn") AS BigInt)) * 10000000 + (CAST(Microsecond("r"."FinishedOn") AS BigInt) - CAST(Microsecond("r"."StartedOn") AS BigInt)) * 10 as "Taken"
		FROM
			"EventRow" "r"
	) "t1"
WHERE
	"t1"."TotalHours" > 3
ORDER BY
	"t1"."Id"

