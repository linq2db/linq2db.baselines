BeforeExecute
-- Firebird.5 Firebird4

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
-- Firebird.5 Firebird4

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

