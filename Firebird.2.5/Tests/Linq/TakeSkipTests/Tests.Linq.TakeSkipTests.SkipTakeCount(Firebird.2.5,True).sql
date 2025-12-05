-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT FIRST @take SKIP @skip
			*
		FROM
			"Child" "t1"
	) "t2"

