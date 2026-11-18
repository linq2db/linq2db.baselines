-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Grace BigInt -- Int64
SET     @Grace = 4567
DECLARE @Required BigInt -- Int64
SET     @Required = 4567

INSERT INTO "OptionalDurationRow"
(
	"Id",
	"Grace",
	"Required"
)
VALUES
(
	:"Id",
	:"Grace",
	:"Required"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Grace BigInt -- Int64
SET     @Grace = NULL
DECLARE @Required BigInt -- Int64
SET     @Required = 4567

INSERT INTO "OptionalDurationRow"
(
	"Id",
	"Grace",
	"Required"
)
VALUES
(
	:"Id",
	:"Grace",
	:"Required"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Grace",
	"t1"."Required"
FROM
	"OptionalDurationRow" "t1"
ORDER BY
	"t1"."Id"

-- SapHana.Native SapHana
DECLARE @Grace BigInt -- Int64
SET     @Grace = NULL

UPDATE
	"OptionalDurationRow" "r"
SET
	"Grace" = :"Grace"
WHERE
	"r"."Id" = 1

-- SapHana.Native SapHana
DECLARE @Grace BigInt -- Int64
SET     @Grace = 4567

UPDATE
	"OptionalDurationRow" "r"
SET
	"Grace" = :"Grace"
WHERE
	"r"."Id" = 2

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Grace",
	"t1"."Required"
FROM
	"OptionalDurationRow" "t1"
ORDER BY
	"t1"."Id"

