-- Firebird.2.5 Firebird
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
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

