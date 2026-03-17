-- Firebird.5 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" "t1"
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t2"
	)
FROM rdb$database

