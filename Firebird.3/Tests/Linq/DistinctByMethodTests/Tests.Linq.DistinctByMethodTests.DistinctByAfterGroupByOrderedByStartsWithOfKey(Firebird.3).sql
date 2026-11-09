-- Firebird.3 Firebird3
SELECT
	"t1"."Key_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Length_1" ORDER BY "e"."c1" DESC, "e"."Key_1" DESC) as "RowNumber",
			"e"."c1",
			"e"."Key_1",
			"e"."Count_1"
		FROM
			(
				SELECT
					"g_2"."Length_1",
					"g_2"."Key_1" STARTING WITH 'J' as "c1",
					"g_2"."Key_1",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							"g_1"."FirstName" as "Key_1",
							CHAR_LENGTH("g_1"."FirstName") as "Length_1"
						FROM
							"Person" "g_1"
					) "g_2"
				GROUP BY
					"g_2"."Key_1",
					"g_2"."Length_1"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."c1" DESC,
	"t1"."Key_1" DESC

-- Firebird.3 Firebird3
SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

