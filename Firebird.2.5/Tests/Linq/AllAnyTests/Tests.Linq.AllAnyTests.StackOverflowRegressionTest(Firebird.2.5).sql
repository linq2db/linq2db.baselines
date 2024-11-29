BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Person" "t1"
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

