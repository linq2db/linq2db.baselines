BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CASE
		WHEN "p"."Value1" IS NOT NULL THEN "p"."Value1"
		ELSE 0
	END
FROM
	"Parent" "p"
WHERE
	"p"."Value1" IS NOT NULL AND "p"."Value1" > 0

