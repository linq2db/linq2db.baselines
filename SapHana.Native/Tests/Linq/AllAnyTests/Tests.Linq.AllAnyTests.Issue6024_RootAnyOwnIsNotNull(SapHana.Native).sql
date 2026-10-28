-- SapHana.Native SapHana
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "p"
			WHERE
				"p"."Value1" IS NOT NULL AND "p"."Value1" > 1
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

