-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Grace BigInt(8) -- Int64
SET     @Grace = 4567
DECLARE @Required BigInt(8) -- Int64
SET     @Required = 4567

INSERT INTO "OptionalDurationRow"
(
	"Id",
	"Grace",
	"Required"
)
VALUES
(
	@Id,
	@Grace,
	@Required
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Grace BigInt -- Int64
SET     @Grace = NULL
DECLARE @Required BigInt(8) -- Int64
SET     @Required = 4567

INSERT INTO "OptionalDurationRow"
(
	"Id",
	"Grace",
	"Required"
)
VALUES
(
	@Id,
	@Grace,
	@Required
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Grace",
	"t1"."Required"
FROM
	"OptionalDurationRow" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW
DECLARE @Grace BigInt -- Int64
SET     @Grace = NULL

UPDATE
	"OptionalDurationRow" "r"
SET
	"Grace" = CAST(@Grace AS BigInt)
WHERE
	"r"."Id" = 1

-- DB2 DB2.LUW DB2LUW
DECLARE @Grace BigInt(8) -- Int64
SET     @Grace = 4567

UPDATE
	"OptionalDurationRow" "r"
SET
	"Grace" = CAST(@Grace AS BigInt)
WHERE
	"r"."Id" = 2

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Grace",
	"t1"."Required"
FROM
	"OptionalDurationRow" "t1"
ORDER BY
	"t1"."Id"

