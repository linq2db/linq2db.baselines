-- Firebird.2.5 Firebird

INSERT INTO "TableWithIdentity"
(
	"Id",
	"Value"
)
VALUES
(
	543,
	123
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"TableWithIdentity" "t1"

