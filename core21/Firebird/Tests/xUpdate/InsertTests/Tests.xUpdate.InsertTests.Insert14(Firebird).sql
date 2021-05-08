BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	Lower("t1"."FirstName") STARTING WITH 'insert14'

BeforeExecute
-- Firebird
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
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") STARTING WITH 'insert14'

BeforeExecute
-- Firebird

DELETE FROM
	"Person" "t1"
WHERE
	Lower("t1"."FirstName") STARTING WITH 'insert14'

