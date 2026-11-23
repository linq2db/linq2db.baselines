-- SapHana.Native SapHana
SELECT
	Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" AS NVarChar(10)),
	CAST("r"."A" + "r"."B" AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || ("r"."B" + "r"."C") || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST("r"."A" - "r"."B" AS NVarChar(10)),
	CAST("r"."A" - "r"."B" AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || ("r"."B" - "r"."C") || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST("r"."A" - "r"."B" AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST("r"."A" * "r"."B" AS NVarChar(10)),
	CAST("r"."A" * "r"."B" AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || ("r"."B" * "r"."C") || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST("r"."A" * "r"."B" AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST(CAST("r"."A" / "r"."B" AS Integer) AS NVarChar(10)),
	CAST(CAST("r"."A" / "r"."B" AS Integer) AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || CAST("r"."B" / "r"."C" AS Integer) || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST(CAST("r"."A" / "r"."B" AS Integer) AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST(MOD("r"."A", "r"."B") AS NVarChar(10)),
	CAST(MOD("r"."A", "r"."B") AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || MOD("r"."B", "r"."C") || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST(MOD("r"."A", "r"."B") AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST(BITAND("r"."A", "r"."B") AS NVarChar(10)),
	CAST(BITAND("r"."A", "r"."B") AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || BITAND("r"."B", "r"."C") || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST(BITAND("r"."A", "r"."B") AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") AS NVarChar(10)),
	CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || ("r"."B" + "r"."C" - BITAND("r"."B", "r"."C")) || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 AS NVarChar(10)),
	CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || ',' || ("r"."B" + "r"."C" - BITAND("r"."B", "r"."C") * 2) || ',' || "r"."C",
	Coalesce("r"."S", '') || Coalesce("r"."S", '') || CAST("r"."A" + "r"."B" - BITAND("r"."A", "r"."B") * 2 AS NVarChar(10)),
	Coalesce("r"."S", '') || CAST(-"r"."A" AS NVarChar(10)),
	CAST(-"r"."A" AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || CAST(BITNOT("r"."A") AS NVarChar(10)),
	CAST(BITNOT("r"."A") AS NVarChar(10)) || Coalesce("r"."S", ''),
	Coalesce("r"."S", '') || '-5',
	'-5' || Coalesce("r"."S", '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	Coalesce("r"."S", '') || '-5',
	'-5' || Coalesce("r"."S", '')
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

