-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			CAST(@ParentID AS Int) = "c_1"."ParentID"
	)
FROM rdb$database

-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			CAST(@ParentID AS Int) = "c_1"."ParentID"
	)
FROM rdb$database

