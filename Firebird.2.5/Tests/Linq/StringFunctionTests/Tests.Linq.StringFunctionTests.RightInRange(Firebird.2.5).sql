-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	RIGHT("r".S, "r".N)
FROM
	"RightValues" "r"
ORDER BY
	"r"."Id"

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".S,
	"t1".N
FROM
	"RightValues" "t1"

-- Firebird.2.5 Firebird
SELECT
	"r"."Id",
	"r".S,
	"r".N
FROM
	"RightValues" "r"
WHERE
	RIGHT("r".S, "r".N) = 'ohn'

-- Firebird.2.5 Firebird
SELECT
	"t1"."Id",
	"t1".S,
	"t1".N
FROM
	"RightValues" "t1"

