﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"x"."FirstName",
	RANK() OVER(ORDER BY CASE
		WHEN "x"."PersonID" = 2 THEN 1
		ELSE 0
	END)
FROM
	"Person" "x"

