-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
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

