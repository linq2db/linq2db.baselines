BeforeExecute
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

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

