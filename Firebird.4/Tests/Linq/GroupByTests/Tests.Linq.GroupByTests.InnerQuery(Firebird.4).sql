-- Firebird.4 Firebird4
SELECT
	(
		SELECT
			"s_2"."Taxonomy"
		FROM
			"Doctor" "s_2"
		WHERE
			"s_1"."Key_1" = "s_2"."PersonID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	(
		SELECT DISTINCT
			"s"."PersonID" as "Key_1"
		FROM
			"Doctor" "s"
	) "s_1"

