-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Value"
FROM
	"InheritanceFilterPositional" "t1"
FETCH NEXT 2 ROWS ONLY

