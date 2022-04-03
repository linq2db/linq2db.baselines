BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") STARTING WITH 'joh' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") NOT STARTING WITH 'joh' AND
	"p"."PersonID" = 1

