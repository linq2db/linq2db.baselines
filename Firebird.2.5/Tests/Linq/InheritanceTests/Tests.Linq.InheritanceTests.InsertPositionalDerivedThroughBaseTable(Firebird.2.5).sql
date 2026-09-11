-- Firebird.2.5 Firebird
INSERT INTO "InheritanceFilterPositional"
(
	"Id",
	"Code",
	"Value"
)
VALUES
(
	1,
	1,
	42
)

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Code",
	"t1"."Value"
FROM
	"InheritanceFilterPositional" "t1"

