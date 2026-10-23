-- Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" <= @n
	)
FROM rdb$database

