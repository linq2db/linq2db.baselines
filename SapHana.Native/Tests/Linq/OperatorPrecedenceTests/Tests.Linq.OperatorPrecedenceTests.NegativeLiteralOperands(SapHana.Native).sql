-- SapHana.Native SapHana
SELECT
	CAST("r"."A" AS Decimal(38, 10)) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."A",
	"t1"."B",
	"t1"."C",
	"t1"."N",
	"t1"."S"
FROM
	"PrecedenceRow" "t1"

-- SapHana.Native SapHana
SELECT
	-(-5.5) * "r"."B"
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."A",
	"t1"."B",
	"t1"."C",
	"t1"."N",
	"t1"."S"
FROM
	"PrecedenceRow" "t1"

-- SapHana.Native SapHana
SELECT
	CAST("r"."A" AS Double) * -5.5
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."A",
	"t1"."B",
	"t1"."C",
	"t1"."N",
	"t1"."S"
FROM
	"PrecedenceRow" "t1"

-- SapHana.Native SapHana
SELECT
	CAST("r"."A" AS Double) * 9.9999999999999995E-08
FROM
	"PrecedenceRow" "r"
ORDER BY
	"r"."Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."A",
	"t1"."B",
	"t1"."C",
	"t1"."N",
	"t1"."S"
FROM
	"PrecedenceRow" "t1"

