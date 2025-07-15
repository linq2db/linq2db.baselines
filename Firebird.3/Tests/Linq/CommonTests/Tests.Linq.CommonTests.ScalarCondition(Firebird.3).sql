BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "p"."Value1" IS NOT NULL THEN "p"."Value1"
		ELSE 100
	END
FROM
	"Parent" "p"

