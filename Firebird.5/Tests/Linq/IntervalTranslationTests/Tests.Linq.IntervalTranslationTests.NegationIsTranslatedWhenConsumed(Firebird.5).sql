-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds BigInt -- Int64
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

-- Firebird.5 Firebird4
SELECT
	CAST(CAST(-"r"."InSeconds" AS BigInt) AS DOUBLE PRECISION) / 3600,
	CAST(Mod(CAST(-"r"."InSeconds" AS BigInt) / 3600, 24) AS Int)
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

