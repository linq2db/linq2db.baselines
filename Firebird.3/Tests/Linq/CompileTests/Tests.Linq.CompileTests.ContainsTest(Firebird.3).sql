-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			CAST(@p AS Int) = "c_1"."ParentID"
	)
FROM rdb$database

-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			CAST(@p AS Int) = "c_1"."ParentID"
	)
FROM rdb$database

