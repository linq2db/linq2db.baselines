﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	DateAdd(Day, "t"."Value", LOCALTIMESTAMP),
	DateAdd(Day, 2, LOCALTIMESTAMP)
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	DateAdd(Day, 3, LOCALTIMESTAMP),
	DateAdd(Day, 4, LOCALTIMESTAMP)
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"v_1"."Value2"
FROM
	(
		SELECT
			DateAdd(Day, "v"."Value", LOCALTIMESTAMP) as "Value1",
			DateAdd(Day, 2, LOCALTIMESTAMP) as "Value2"
		FROM
			"SampleClass" "v"
		WHERE
			"v"."Value" = 1
		UNION
		SELECT
			DateAdd(Day, 3, LOCALTIMESTAMP) as "Value1",
			DateAdd(Day, 4, LOCALTIMESTAMP) as "Value2"
		FROM rdb$database
	) "v_1"

