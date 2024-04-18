BeforeExecute
-- Firebird.3 Firebird3
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
				"p"."ParentID" = 1 AND "p"."ParentID" = @ParentID
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
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
				"p"."ParentID" = 1 AND "p"."ParentID" = @ParentID
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

