-- Firebird.3 Firebird3

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

-- Firebird.3 Firebird3

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	),
	'Shepard',
	'M'
)

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

-- Firebird.3 Firebird3

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

