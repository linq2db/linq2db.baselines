BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT SKIP @skip
			1 as "c1"
		FROM
			"Child" "t1"
	) "t2"

