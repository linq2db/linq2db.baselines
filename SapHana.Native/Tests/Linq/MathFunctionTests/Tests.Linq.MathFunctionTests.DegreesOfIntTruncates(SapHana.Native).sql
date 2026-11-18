-- SapHana.Native SapHana
SELECT
	CAST(CAST("d"."M" AS Integer) AS Double) * 57.295779513082323
FROM
	"DegreesValue" "d"
WHERE
	CAST(CAST(CAST(CAST("d"."M" AS Integer) AS Double) * 57.295779513082323 AS Integer) AS Double) < 57.100000000000001

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."M"
FROM
	"DegreesValue" "t1"

-- SapHana.Native SapHana
SELECT
	CAST(CAST("d"."M" AS Integer) AS Double) * 57.295779513082323
FROM
	"DegreesValue" "d"
WHERE
	CAST(CAST(CAST(CAST("d"."M" AS Integer) AS Double) * 57.295779513082323 AS Integer) AS Double) < 114.5

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."M"
FROM
	"DegreesValue" "t1"

