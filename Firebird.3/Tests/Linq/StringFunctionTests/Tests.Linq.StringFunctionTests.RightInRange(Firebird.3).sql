-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	RIGHT("r".S, "r".N)
FROM
	"RightValues" "r"
ORDER BY
	"r"."Id"

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".S,
	"t1".N
FROM
	"RightValues" "t1"

-- Firebird.3 Firebird3
SELECT
	"r"."Id",
	"r".S,
	"r".N
FROM
	"RightValues" "r"
WHERE
	RIGHT("r".S, "r".N) = 'ohn'

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1".S,
	"t1".N
FROM
	"RightValues" "t1"

