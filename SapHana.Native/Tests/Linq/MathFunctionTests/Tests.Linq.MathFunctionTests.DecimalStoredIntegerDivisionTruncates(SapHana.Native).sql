-- SapHana.Native SapHana
SELECT
	CAST(CAST("t"."X" AS Integer) / 2 AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	"t"."Id"
FROM
	"DecimalStoredIntegerTable" "t"
WHERE
	CAST(CAST("t"."X" AS Integer) / 2 AS Integer) = -3
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
DECLARE @two Decimal
SET     @two = 2

SELECT
	CAST(CAST("t"."X" AS Integer) / CAST(:"two" AS Integer) AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(CAST("t"."X" + 1 AS Integer) / 2 AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(CAST(-"t"."X" AS Integer) / 2 AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(CAST(Abs("t"."X") AS Integer) / 2 AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(60 / CAST("t"."X" AS Integer) AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(CAST("t"."X" AS Integer) / CAST("t"."X2" AS Integer) AS Integer)
FROM
	"DecimalStoredIntegerTable" "t"
ORDER BY
	"t"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."X",
	"t1"."X2"
FROM
	"DecimalStoredIntegerTable" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(CAST(SUM("g_1"."X") AS Integer) / 2 AS Integer)
FROM
	"DecimalStoredIntegerTable" "g_1"
LIMIT 2

