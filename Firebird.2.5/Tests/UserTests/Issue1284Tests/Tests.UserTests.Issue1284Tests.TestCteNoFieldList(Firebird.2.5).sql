﻿BeforeExecute
-- Firebird.2.5 Firebird

WITH "cte"
(
	"FirstName",
	ID,
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		"x"."FirstName",
		"x"."PersonID",
		"x"."LastName",
		"x"."MiddleName",
		"x"."Gender"
	FROM
		"Person" "x"
)
SELECT
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"cte" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"

