-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "DuRow"
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
SET     @Key = 20

INSERT INTO "DuRow"
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
DECLARE @Key Integer -- Int32
SET     @Key = 10

SELECT
	"x"."Id",
	"x"."Key"
FROM
	"DuRow" "x"
WHERE
	"x"."Key" = @Key

