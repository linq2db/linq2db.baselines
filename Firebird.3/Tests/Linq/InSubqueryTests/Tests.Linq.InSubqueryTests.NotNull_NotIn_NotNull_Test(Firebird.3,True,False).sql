-- Firebird.3 Firebird3

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
ORDER BY
	"t".ID

-- Firebird.3 Firebird3

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

-- Firebird.3 Firebird3

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

