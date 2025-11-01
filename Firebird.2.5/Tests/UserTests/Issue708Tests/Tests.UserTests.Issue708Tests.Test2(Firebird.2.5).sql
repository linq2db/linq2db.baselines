-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "t2"
		WHERE
			"t2"."ParentID" = @id AND "t1"."ParentID" = "t2"."ParentID"
	) AND
	"t1"."ChildID" >= 0 AND "t1"."ChildID" <= 100

