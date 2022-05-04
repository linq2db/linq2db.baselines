BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert14'

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
		SELECT FIRST 1
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
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert14'

