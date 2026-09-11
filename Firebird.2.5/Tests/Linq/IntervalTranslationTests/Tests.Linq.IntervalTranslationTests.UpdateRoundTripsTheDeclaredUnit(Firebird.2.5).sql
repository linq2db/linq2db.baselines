-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 45670000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567

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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"

-- Firebird.2.5 Firebird
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 19260
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 192600000000
DECLARE @Undeclared BigInt -- Int64
SET     @Undeclared = 45670000000
DECLARE @UndeclaredSeconds BigInt -- Int64
SET     @UndeclaredSeconds = 4567
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"DurationRow" "t1"
SET
	"InSeconds" = CAST(@InSeconds AS BigInt),
	"InTicks" = CAST(@InTicks AS BigInt),
	"Undeclared" = CAST(@Undeclared AS BigInt),
	"UndeclaredSeconds" = CAST(@UndeclaredSeconds AS BigInt)
WHERE
	"t1"."Id" = @Id

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"

-- Firebird.2.5 Firebird
DECLARE @InSeconds BigInt -- Int64
SET     @InSeconds = 4567
DECLARE @InTicks BigInt -- Int64
SET     @InTicks = 45670000000

UPDATE
	"DurationRow" "r"
SET
	"InSeconds" = CAST(@InSeconds AS BigInt),
	"InTicks" = CAST(@InTicks AS BigInt)
WHERE
	"r"."Id" = 1

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."InSeconds",
	"t1"."InTicks",
	"t1"."Undeclared",
	"t1"."UndeclaredSeconds"
FROM
	"DurationRow" "t1"

