-- SapHana.Native SapHana
SELECT
	CAST(CAST("t"."D" AS Integer) / 2 AS Integer)
FROM
	"DoubleStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."D"
FROM
	"DoubleStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	"t"."Id"
FROM
	"DoubleStoredIntegerTable" "t"
WHERE
	CAST(CAST("t"."D" AS Integer) / 2 AS Integer) = -3
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."D"
FROM
	"DoubleStoredIntegerTable" "t1"

