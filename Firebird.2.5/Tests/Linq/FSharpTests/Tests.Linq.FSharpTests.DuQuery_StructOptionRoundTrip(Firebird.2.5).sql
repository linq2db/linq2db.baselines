-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "StructDuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = NULL

INSERT INTO "StructDuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Firebird.2.5 Firebird
SELECT
	"x"."Key"
FROM
	"StructDuOptRow" "x"
ORDER BY
	"x"."Id"

