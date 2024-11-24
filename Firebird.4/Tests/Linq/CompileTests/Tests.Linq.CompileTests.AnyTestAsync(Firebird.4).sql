BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
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
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
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
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

