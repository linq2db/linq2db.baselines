-- SapHana.Odbc SapHanaOdbc
SELECT
	-("r"."A" + "r"."B"),
	-("r"."A" + "r"."B"),
	-("r"."A" - "r"."B"),
	-("r"."A" - "r"."B"),
	-BITAND("r"."A", "r"."B"),
	-BITAND("r"."A", "r"."B"),
	-("r"."A" + "r"."B" - BITAND("r"."A", "r"."B")),
	-("r"."A" + "r"."B" - BITAND("r"."A", "r"."B")),
	-("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2),
	-("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2),
	"r"."B",
	-BITNOT("r"."B"),
	-(-5),
	-(-5 * "r"."B")
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	-(-5)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

