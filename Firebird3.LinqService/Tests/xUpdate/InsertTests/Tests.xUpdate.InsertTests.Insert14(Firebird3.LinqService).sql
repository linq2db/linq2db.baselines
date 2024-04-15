BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

BeforeExecute
-- Firebird3 Firebird

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

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

