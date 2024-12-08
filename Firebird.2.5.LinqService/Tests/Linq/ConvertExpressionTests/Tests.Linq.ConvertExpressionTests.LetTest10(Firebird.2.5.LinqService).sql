BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "p"
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

