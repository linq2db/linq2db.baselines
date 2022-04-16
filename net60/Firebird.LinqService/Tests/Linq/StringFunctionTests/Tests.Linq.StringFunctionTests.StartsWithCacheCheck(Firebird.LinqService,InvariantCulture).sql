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
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'Joh' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'Joh' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) STARTING WITH 'JOH' AND
	"p"."PersonID" = 1

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT STARTING WITH 'JOH' AND
	"p"."PersonID" = 1

