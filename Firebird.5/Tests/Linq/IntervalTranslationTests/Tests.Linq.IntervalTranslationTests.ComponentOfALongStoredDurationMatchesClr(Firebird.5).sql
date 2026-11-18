-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 3000000005
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 30000000050000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 30000000050000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 3000000005

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
	CAST("r"."InSeconds" / 86400 AS Int),
	CAST(Mod("r"."InSeconds" / 3600, 24) AS Int),
	CAST(Mod("r"."InSeconds" / 60, 60) AS Int),
	CAST(Mod("r"."InSeconds", 60) AS Int)
FROM
	"DurationRow" "r"
FETCH NEXT 2 ROWS ONLY

-- Firebird.5 Firebird4
DECLARE @Seconds Integer -- Int32
SET     @Seconds = 5

SELECT
	"r"."Id"
FROM
	"DurationRow" "r"
WHERE
	CAST(Mod("r"."InSeconds", 60) AS Int) = @Seconds

