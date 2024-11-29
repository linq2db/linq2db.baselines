BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	CASE
		WHEN "p"."ParentID" <> 1 THEN FALSE
		ELSE TRUE
	END

