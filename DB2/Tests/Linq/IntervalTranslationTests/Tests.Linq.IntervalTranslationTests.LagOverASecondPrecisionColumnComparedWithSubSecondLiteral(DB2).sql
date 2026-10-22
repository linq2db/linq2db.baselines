-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StartedOn Timestamp(20) -- DateTime
SET     @StartedOn = CAST('2026-06-01-10.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp -- DateTime
SET     @FinishedOn = NULL

INSERT INTO "CoarseNullableEventRow"
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
SET     @StartedOn = CAST('2026-06-01-11.00.00.000000' AS TIMESTAMP(6))
DECLARE @FinishedOn Timestamp(20) -- DateTime
SET     @FinishedOn = CAST('2026-06-01-13.00.00.000000' AS TIMESTAMP(6))

INSERT INTO "CoarseNullableEventRow"
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
	COUNT(*)
FROM
	(
		SELECT
			LAG("r"."StartedOn", 1, "r"."StartedOn") OVER (ORDER BY "r"."Id") as "Lag"
		FROM
			"CoarseNullableEventRow" "r"
	) "t1"
WHERE
	"t1"."Lag" < CAST('2026-06-01-10.00.00.500000' AS TIMESTAMP(6))

