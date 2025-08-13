BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" <= 3
	)
FROM rdb$database

