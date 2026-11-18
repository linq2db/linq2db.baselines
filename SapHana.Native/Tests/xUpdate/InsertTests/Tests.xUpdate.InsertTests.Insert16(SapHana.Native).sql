-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

-- SapHana.Native SapHana
DECLARE @name Integer -- Int32
SET     @name = 8
DECLARE @idx Integer -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	CAST(:"name" + :"idx" AS NVarChar(11)),
	'M'
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

