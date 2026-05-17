-- Firebird.2.5 Firebird

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

