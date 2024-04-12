BeforeExecute
-- Firebird4 Firebird
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT SKIP @skip
			*
		FROM
			"Child" "t1"
	) "t2"

