-- SapHana.Native SapHana
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT EXISTS(
		SELECT
			"s"."String"
		FROM DUMMY
		INTERSECT
		SELECT
			:"value"
		FROM DUMMY
	)

-- SapHana.Native SapHana
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	NOT EXISTS(
		SELECT
			"s"."NullableString"
		FROM DUMMY
		INTERSECT
		SELECT
			:"value"
		FROM DUMMY
	)

-- SapHana.Native SapHana
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	EXISTS(
		SELECT
			"s"."String"
		FROM DUMMY
		INTERSECT
		SELECT
			:"value"
		FROM DUMMY
	)

-- SapHana.Native SapHana
DECLARE @value NVarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	"Src" "s"
WHERE
	EXISTS(
		SELECT
			"s"."NullableString"
		FROM DUMMY
		INTERSECT
		SELECT
			:"value"
		FROM DUMMY
	)

