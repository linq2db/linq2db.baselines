-- SapHana.Native SapHana
SELECT
	CAST(("r"."A" + "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" + "r"."C") AS Integer),
	CAST(("r"."A" + "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" + "r"."C") AS Integer),
	CAST(("r"."A" - "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" - "r"."C") AS Integer),
	CAST(("r"."A" - "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" - "r"."C") AS Integer),
	CAST("r"."A" / ("r"."B" * "r"."C") AS Integer),
	CAST("r"."A" / ("r"."B" * "r"."C") AS Integer),
	CAST(CAST("r"."A" / "r"."B" AS Integer) / "r"."C" AS Integer),
	CAST("r"."A" / CAST("r"."B" / "r"."C" AS Integer) AS Integer),
	CAST(CAST("r"."A" / "r"."B" AS Integer) / "r"."C" AS Integer),
	CAST("r"."A" / CAST("r"."B" / "r"."C" AS Integer) AS Integer),
	CAST("r"."A" / ("r"."B" + "r"."C" - BITAND("r"."B", "r"."C") * 2) AS Integer),
	CAST("r"."A" / ("r"."B" + "r"."C" - BITAND("r"."B", "r"."C") * 2) AS Integer),
	CAST(("r"."A" + "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" + "r"."C") AS Integer),
	CAST(("r"."A" + -6) / "r"."C" AS Integer),
	CAST(("r"."A" - "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" - "r"."C") AS Integer),
	CAST(("r"."A" - -6) / "r"."C" AS Integer),
	CAST(("r"."A" * "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" * "r"."C") AS Integer),
	CAST(("r"."A" * -6) / "r"."C" AS Integer),
	CAST(("r"."A" / "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" / "r"."C") AS Integer),
	CAST(("r"."A" / -6) / "r"."C" AS Integer),
	CAST(("r"."A" + "r"."B") / "r"."C" AS Integer),
	CAST("r"."A" / ("r"."B" + "r"."C") AS Integer),
	CAST(("r"."A" + -6) / "r"."C" AS Integer),
	CAST("r"."A" / -"r"."B" AS Integer),
	CAST(("r"."A" - "r"."B") / "r"."C" AS Integer),
	CAST(("r"."A" + "r"."B") / "r"."C" AS Integer),
	CAST(CAST("r"."A" / -"r"."B" AS Integer) / "r"."C" AS Integer),
	CAST(BITAND("r"."A", -"r"."B") / "r"."C" AS Integer),
	CAST(("r"."A" - "r"."B" - BITAND("r"."A", -"r"."B") * 2) / "r"."C" AS Integer),
	CAST("r"."A" * BITNOT("r"."B") / "r"."C" AS Integer),
	CAST("r"."A" * -5 / "r"."C" AS Integer),
	CAST(BITAND("r"."A", -5) / "r"."C" AS Integer)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	CAST("r"."A" * -5 / "r"."C" AS Integer),
	CAST(BITAND("r"."A", -5) / "r"."C" AS Integer)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

