BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") STARTING WITH 'joh' AND "p"."PersonID" = 1

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	(Lower("p"."FirstName") NOT STARTING WITH 'joh') AND
	"p"."PersonID" = 1

