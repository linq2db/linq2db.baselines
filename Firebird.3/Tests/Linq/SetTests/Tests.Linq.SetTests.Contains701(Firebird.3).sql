BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 11
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 11

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "param"
					LEFT JOIN "Parent" "a_Parent" ON "param"."ParentID" = "a_Parent"."ParentID"
			WHERE
				"a_Parent"."ParentID" = @ParentID AND
				"a_Parent"."ParentID" IS NOT NULL AND
				"a_Parent"."Value1" = @Value1 AND
				"a_Parent"."Value1" IS NOT NULL
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

