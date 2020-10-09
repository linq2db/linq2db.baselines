BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert14%'

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert14' || (
		SELECT FIRST @take 
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
	"p"."FirstName" LIKE 'Insert14%'

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert14%'

