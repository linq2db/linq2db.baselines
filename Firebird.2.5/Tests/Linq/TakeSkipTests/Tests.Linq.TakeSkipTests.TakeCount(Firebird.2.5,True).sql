-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT FIRST @take
			*
		FROM
			"Child" "t1"
	) "t2"

