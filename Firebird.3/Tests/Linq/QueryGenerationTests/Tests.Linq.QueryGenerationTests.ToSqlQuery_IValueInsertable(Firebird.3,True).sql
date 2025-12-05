-- Firebird.3 Firebird3

INSERT INTO "TableWithIdentity"
(
	"Value"
)
VALUES
(
	123
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"
FETCH NEXT 2 ROWS ONLY

