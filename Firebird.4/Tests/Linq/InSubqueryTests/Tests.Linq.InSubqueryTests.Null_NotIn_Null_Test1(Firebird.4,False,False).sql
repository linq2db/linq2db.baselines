﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	"t".ID IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			"test_in_2" "p"
		WHERE
			"p".ID IS NOT NULL AND "t".ID = "p".ID
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

