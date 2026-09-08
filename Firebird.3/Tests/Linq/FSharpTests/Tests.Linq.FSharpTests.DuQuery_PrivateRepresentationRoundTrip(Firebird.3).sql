-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 7

INSERT INTO "PrivateDuRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Firebird.3 Firebird3
SELECT
	"x"."Key"
FROM
	"PrivateDuRow" "x"
ORDER BY
	"x"."Id"

