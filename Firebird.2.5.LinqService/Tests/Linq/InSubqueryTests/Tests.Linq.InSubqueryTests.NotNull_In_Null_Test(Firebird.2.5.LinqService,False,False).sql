BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t".PK,
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"test_in_2" "p"
		WHERE
			"t".ID = "p".ID
	)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1".PK,
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1".PK,
	"t1".ID,
	"t1".GV
FROM
	"test_in_2" "t1"

