BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CASE
		WHEN "p"."Value1" IS NOT NULL THEN "p"."Value1"
		ELSE 100
	END
FROM
	"Parent" "p"

