BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert14%'

BeforeExecute
-- SapHana.Native SapHana

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
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'Insert14%'

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert14%'

