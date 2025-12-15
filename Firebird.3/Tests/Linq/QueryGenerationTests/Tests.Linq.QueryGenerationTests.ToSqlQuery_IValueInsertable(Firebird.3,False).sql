-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 123

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	@value
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

