-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "DuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = NULL

INSERT INTO "DuOptRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Firebird.4 Firebird4
DECLARE @Key Integer -- Int32
SET     @Key = 10

SELECT
	"x"."Id",
	"x"."Key"
FROM
	"DuOptRow" "x"
WHERE
	"x"."Key" = @Key

