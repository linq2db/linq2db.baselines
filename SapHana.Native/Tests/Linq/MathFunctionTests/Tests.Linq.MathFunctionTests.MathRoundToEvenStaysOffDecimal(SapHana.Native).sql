-- SapHana.Native SapHana
SELECT
	"r"."Id",
	CASE
		WHEN "r"."F" - FLOOR("r"."F") = 0.5 THEN ROUND("r"."F" * 0.5, 0) * 2
		ELSE ROUND("r"."F", 0)
	END
FROM
	"ResidueValues" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."F",
	"t1"."P"
FROM
	"ResidueValues" "t1"

