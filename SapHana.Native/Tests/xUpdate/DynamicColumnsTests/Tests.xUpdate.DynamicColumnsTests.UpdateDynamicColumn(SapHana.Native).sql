-- SapHana.Native SapHana
INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."LastName" = 'Limonadovy'

-- SapHana.Native SapHana
UPDATE
	"Person" "c_1"
SET
	"FirstName" = 'Johnny'
WHERE
	"c_1"."LastName" = 'Limonadovy'

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'Johnny' AND "c_1"."LastName" = 'Limonadovy'

