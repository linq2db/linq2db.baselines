BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				CAST(@p AS Int) = "c_1"."ParentID"
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				CAST(@p AS Int) = "c_1"."ParentID"
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

