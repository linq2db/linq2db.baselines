BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	(
		SELECT
			"p"."Value1"
		FROM
			"Parent" "p"
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

