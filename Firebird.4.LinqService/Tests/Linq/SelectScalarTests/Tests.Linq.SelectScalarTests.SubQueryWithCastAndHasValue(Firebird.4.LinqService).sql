BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	(
		SELECT
			CASE
				WHEN "r"."Value1" IS NOT NULL THEN TRUE
				ELSE FALSE
			END
		FROM
			"Parent" "r"
		FETCH NEXT 1 ROWS ONLY
	) = TRUE

