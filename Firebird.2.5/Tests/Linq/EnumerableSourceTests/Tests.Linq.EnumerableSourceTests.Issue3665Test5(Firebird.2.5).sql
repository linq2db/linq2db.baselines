﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"y"."item"
FROM
	"Person" "x"
		CROSS JOIN (
			SELECT 'M' AS "item" FROM rdb$database
			UNION ALL
			SELECT 'F' FROM rdb$database
			UNION ALL
			SELECT 'U' FROM rdb$database
			UNION ALL
			SELECT 'O' FROM rdb$database) "y"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

