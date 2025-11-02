-- Firebird.4 Firebird4
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" + CAST(@n AS Int) = "c_1"."ParentID"
	)

