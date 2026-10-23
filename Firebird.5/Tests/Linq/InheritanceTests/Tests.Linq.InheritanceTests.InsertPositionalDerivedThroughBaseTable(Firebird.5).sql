-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Value"
FROM
	"InheritanceFilterPositional" "t1"
FETCH NEXT 2 ROWS ONLY

