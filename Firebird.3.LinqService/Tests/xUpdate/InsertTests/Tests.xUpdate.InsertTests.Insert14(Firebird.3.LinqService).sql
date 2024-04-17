BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert14'

BeforeExecute
-- Firebird.3 Firebird3
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
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
		FETCH NEXT @take ROWS ONLY
	),
	'Shepard',
	'M'
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."FirstName" STARTING WITH 'Insert14'

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" STARTING WITH 'Insert14'

