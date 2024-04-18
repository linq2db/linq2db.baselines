BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				"t1"."PersonID" = @ID
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

