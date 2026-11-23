-- SapHana.Odbc SapHanaOdbc
SELECT
	MOD("r"."A" + "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C"),
	MOD("r"."A" + "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C"),
	MOD("r"."A" - "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" - "r"."C"),
	MOD("r"."A" - "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" - "r"."C"),
	MOD(CAST("r"."A" / "r"."B" AS Integer), "r"."C"),
	MOD(CAST("r"."A" / "r"."B" AS Integer), "r"."C"),
	MOD(MOD("r"."A", "r"."B"), "r"."C"),
	MOD(MOD("r"."A", "r"."B"), "r"."C"),
	MOD(BITAND("r"."A", "r"."B"), "r"."C"),
	MOD(BITAND("r"."A", "r"."B"), "r"."C"),
	MOD("r"."A" + "r"."B" - BITAND("r"."A", "r"."B"), "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C" - BITAND("r"."B", "r"."C")),
	MOD("r"."A" + "r"."B" - BITAND("r"."A", "r"."B"), "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C" - BITAND("r"."B", "r"."C")),
	MOD("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2, "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C" - BITAND("r"."B", "r"."C") * 2),
	MOD("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2, "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C" - BITAND("r"."B", "r"."C") * 2),
	MOD("r"."A" + "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C"),
	MOD("r"."A" + -6, "r"."C"),
	MOD("r"."A" - "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" - "r"."C"),
	MOD("r"."A" - -6, "r"."C"),
	MOD("r"."A" * "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" * "r"."C"),
	MOD("r"."A" * -6, "r"."C"),
	MOD("r"."A" / "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" / "r"."C"),
	MOD("r"."A" / -6, "r"."C"),
	MOD("r"."A" + "r"."B", "r"."C"),
	MOD("r"."A", "r"."B" + "r"."C"),
	MOD("r"."A" + -6, "r"."C"),
	MOD("r"."A", -"r"."B"),
	MOD("r"."A" - "r"."B", "r"."C"),
	MOD("r"."A" + "r"."B", "r"."C"),
	MOD(CAST("r"."A" / -"r"."B" AS Integer), "r"."C"),
	MOD(MOD("r"."A", -"r"."B"), "r"."C"),
	MOD("r"."A" - "r"."B" - BITAND("r"."A", -"r"."B"), "r"."C"),
	MOD("r"."A" - "r"."B" - BITAND("r"."A", -"r"."B") * 2, "r"."C"),
	MOD("r"."A", BITNOT("r"."B")),
	MOD("r"."A" + BITNOT("r"."B"), "r"."C"),
	MOD("r"."A" - BITNOT("r"."B"), "r"."C"),
	MOD("r"."A" * BITNOT("r"."B"), "r"."C"),
	MOD(MOD("r"."A", BITNOT("r"."B")), "r"."C"),
	MOD(BITAND("r"."A", BITNOT("r"."B")), "r"."C"),
	MOD("r"."A" + BITNOT("r"."B") - BITAND("r"."A", BITNOT("r"."B")), "r"."C"),
	MOD("r"."A" + BITNOT("r"."B") - BITAND("r"."A", BITNOT("r"."B")) * 2, "r"."C"),
	MOD("r"."A", -5),
	MOD(-5, "r"."C"),
	MOD("r"."A" + -5, "r"."C"),
	MOD("r"."A" - -5, "r"."C"),
	MOD("r"."A" * -5, "r"."C"),
	MOD(MOD("r"."A", -5), "r"."C"),
	MOD(BITAND("r"."A", -5), "r"."C"),
	MOD("r"."A" + -5 - BITAND("r"."A", -5), "r"."C"),
	MOD("r"."A" + -5 - BITAND("r"."A", -5) * 2, "r"."C")
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Odbc SapHanaOdbc
SELECT
	MOD("r"."A", -5),
	MOD(-5, "r"."C"),
	MOD("r"."A" + -5, "r"."C"),
	MOD("r"."A" - -5, "r"."C"),
	MOD("r"."A" * -5, "r"."C"),
	MOD(MOD("r"."A", -5), "r"."C"),
	MOD(BITAND("r"."A", -5), "r"."C"),
	MOD("r"."A" + -5 - BITAND("r"."A", -5), "r"."C"),
	MOD("r"."A" + -5 - BITAND("r"."A", -5) * 2, "r"."C")
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

