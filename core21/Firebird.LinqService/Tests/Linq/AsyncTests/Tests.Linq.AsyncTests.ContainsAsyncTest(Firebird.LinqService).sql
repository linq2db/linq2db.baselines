BeforeExecute
-- Firebird (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
		WHERE
			"t1"."PersonID" = @ID
	) THEN 1 ELSE 0 END
FROM rdb$database

