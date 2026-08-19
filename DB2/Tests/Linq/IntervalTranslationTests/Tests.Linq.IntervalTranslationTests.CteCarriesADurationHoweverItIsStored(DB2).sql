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
WITH CTE_1
(
	"Id",
	"InSeconds",
	"InTicks",
	"UndeclaredSeconds"
)
AS
(
	SELECT
		"r"."Id",
		"r"."InSeconds",
		"r"."InTicks",
		"r"."UndeclaredSeconds"
	FROM
		"DurationRow" "r"
)
SELECT
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."UndeclaredSeconds"
FROM
	CTE_1 "t1"
ORDER BY
	"t1"."Id"
FETCH NEXT 2 ROWS ONLY

