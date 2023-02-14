BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN Cast(@p_1 as Int) IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

BeforeExecute
-- Firebird4 Firebird (asynchronously)
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN Cast(@p_1 as Int) IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

