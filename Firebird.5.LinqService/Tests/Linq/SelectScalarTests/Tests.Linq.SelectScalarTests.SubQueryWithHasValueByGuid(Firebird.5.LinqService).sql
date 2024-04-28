BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	(
		SELECT
			CASE
				WHEN "r"."GuidValue" IS NOT NULL THEN TRUE
				ELSE FALSE
			END
		FROM
			"LinqDataTypes" "r"
		FETCH NEXT 1 ROWS ONLY
	) = TRUE

