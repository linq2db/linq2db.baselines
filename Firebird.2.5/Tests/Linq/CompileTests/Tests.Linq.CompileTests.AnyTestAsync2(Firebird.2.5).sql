BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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
				"c_1"."ParentID" = @p
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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
				"c_1"."ParentID" = @p
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

