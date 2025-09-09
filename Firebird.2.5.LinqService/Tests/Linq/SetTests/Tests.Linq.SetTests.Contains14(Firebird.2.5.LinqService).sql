BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "p"
			WHERE
				"p"."ParentID" = 1 AND CAST(@ParentID AS Int) = "p"."ParentID"
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" "p"
			WHERE
				"p"."ParentID" = 1 AND CAST(@ParentID AS Int) = "p"."ParentID"
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

