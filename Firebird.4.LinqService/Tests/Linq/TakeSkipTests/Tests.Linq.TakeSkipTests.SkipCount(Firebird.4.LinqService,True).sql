BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" "t1"
		OFFSET @skip ROWS
	) "t2"

