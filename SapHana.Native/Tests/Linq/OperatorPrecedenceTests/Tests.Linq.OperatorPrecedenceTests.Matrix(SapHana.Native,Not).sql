-- SapHana.Native SapHana
SELECT
	BITNOT("r"."A" + "r"."B"),
	BITNOT("r"."A" + "r"."B"),
	BITNOT("r"."A" - "r"."B"),
	BITNOT("r"."A" - "r"."B"),
	BITNOT("r"."A" * "r"."B"),
	BITNOT("r"."A" * "r"."B"),
	BITNOT(CAST("r"."A" / "r"."B" AS Integer)),
	BITNOT(CAST("r"."A" / "r"."B" AS Integer)),
	BITNOT(BITAND("r"."A", "r"."B")),
	BITNOT(BITAND("r"."A", "r"."B")),
	BITNOT("r"."A" + "r"."B" - BITAND("r"."A", "r"."B")),
	BITNOT("r"."A" + "r"."B" - BITAND("r"."A", "r"."B")),
	BITNOT(-"r"."B"),
	BITNOT(BITNOT("r"."B")),
	BITNOT(-5),
	BITNOT(-5 * "r"."B")
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	BITNOT(-5)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

