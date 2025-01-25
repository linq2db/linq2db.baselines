BeforeExecute
-- Firebird.3 Firebird3
DECLARE @n Integer -- Int32
SET     @n = 3

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" <= @n
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

