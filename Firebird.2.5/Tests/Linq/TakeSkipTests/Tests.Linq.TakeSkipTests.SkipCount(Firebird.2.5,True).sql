-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP @skip
			*
		FROM
			"Child" "t1"
	) "t2"

