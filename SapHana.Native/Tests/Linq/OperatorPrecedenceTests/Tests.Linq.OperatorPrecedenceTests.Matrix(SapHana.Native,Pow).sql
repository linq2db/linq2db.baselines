-- SapHana.Native SapHana
SELECT
	Power(CAST("r"."B" + "r"."C" AS Double), 2),
	Power(CAST("r"."C" AS Double), CAST("r"."B" + "r"."C" AS Double)),
	Power(CAST("r"."B" AS Double), 2) + "r"."C",
	Power(CAST("r"."B" - "r"."C" AS Double), 2),
	Power(CAST("r"."C" AS Double), CAST("r"."B" - "r"."C" AS Double)),
	Power(CAST("r"."B" AS Double), 2) - "r"."C",
	Power(CAST("r"."B" * "r"."C" AS Double), 2),
	Power(CAST("r"."C" AS Double), CAST("r"."B" * "r"."C" AS Double)),
	Power(CAST("r"."B" AS Double), 2) * "r"."C",
	Power(CAST(CAST("r"."B" / "r"."C" AS Integer) AS Double), 2),
	Power(CAST("r"."C" AS Double), CAST(CAST("r"."B" / "r"."C" AS Integer) AS Double)),
	Power(CAST("r"."B" AS Double), 2) / "r"."C",
	Power(CAST(-"r"."B" AS Double), 2),
	-Power(CAST("r"."B" AS Double), 2),
	Power(CAST("r"."C" AS Double), Power(CAST("r"."C" AS Double), CAST("r"."C" AS Double))),
	Power(CAST("r"."B" + "r"."C" AS Double), 2)
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

