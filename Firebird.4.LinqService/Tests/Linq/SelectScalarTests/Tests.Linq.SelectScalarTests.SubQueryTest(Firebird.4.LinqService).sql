BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			"p"."Value1"
		FROM
			"Parent" "p"
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

