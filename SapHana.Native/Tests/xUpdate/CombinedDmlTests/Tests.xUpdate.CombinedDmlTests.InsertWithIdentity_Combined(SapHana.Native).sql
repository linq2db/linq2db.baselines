-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

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
	'Shepard',
	'M'
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'John' AND "p"."LastName" = 'Shepard'
LIMIT 2

-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

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
	'Shepard',
	'M'
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'John' AND "p"."LastName" = 'Shepard'
LIMIT 2

-- SapHana.Native SapHana
DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

