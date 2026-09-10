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
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" * 10000000 = "r"."InTicks"

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	"r"."InSeconds" * 10000000 > "r"."InTicks"

