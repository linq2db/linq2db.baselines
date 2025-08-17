BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1 AND CAST(@ParentID AS Int) = "p"."ParentID"
	)
FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1 AND CAST(@ParentID AS Int) = "p"."ParentID"
	)
FROM rdb$database

