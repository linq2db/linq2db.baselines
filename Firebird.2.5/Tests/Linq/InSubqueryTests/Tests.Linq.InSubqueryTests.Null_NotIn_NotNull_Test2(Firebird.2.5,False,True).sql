-- Firebird.2.5 Firebird

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"test_in_2" "p"
		WHERE
			"t".ID = "p".ID
	)

-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

