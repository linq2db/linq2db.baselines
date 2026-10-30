-- SapHana.Native SapHana
DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- SapHana.Native SapHana
INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || Coalesce((
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	), ''),
	'Shepard',
	'M'
)

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

-- SapHana.Native SapHana
DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%' ESCAPE '~'

