-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt(8) -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt(8) -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt(8) -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt(8) -- Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	@Id,
	@InSeconds,
	@InTicks,
	@Undeclared,
	@UndeclaredSeconds
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Source",
	"t1"."Duration",
	"t1"."Duration_1"
FROM
	(
		SELECT
			CAST(1 AS Int) as "Source",
			"r"."InSeconds" as "Duration",
			CAST(NULL AS BigInt) as "Duration_1"
		FROM
			"DurationRow" "r"
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Source",
			CAST(NULL AS BigInt) as "Duration",
			"r_1"."InTicks" as "Duration_1"
		FROM
			"DurationRow" "r_1"
	) "t1"
ORDER BY
	"t1"."Source"

