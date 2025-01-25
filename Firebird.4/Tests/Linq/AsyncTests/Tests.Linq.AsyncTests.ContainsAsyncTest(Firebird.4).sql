BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
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
				CAST(@ID AS Int) = "t1"."PersonID"
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

