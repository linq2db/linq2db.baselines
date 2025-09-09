BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			1 = "c_1"."ParentID"
	)
FROM rdb$database

