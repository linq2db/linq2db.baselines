﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."Key_1",
	"d"."FirstName",
	"d"."PersonID",
	"d"."LastName",
	"d"."MiddleName",
	"d"."Gender"
FROM
	(
		SELECT DISTINCT
			"t1"."FirstName" as "Key_1"
		FROM
			"Person" "t1"
	) "m_1"
		INNER JOIN "Person" "d" ON "m_1"."Key_1" = "d"."FirstName"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1"."FirstName"
FROM
	"Person" "t1"
GROUP BY
	"t1"."FirstName"

