﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Person" "t1"
		WHERE
			NOT ("t1"."MiddleName" <> "t1"."LastName" OR "t1"."MiddleName" IS NULL) OR
			("t1"."MiddleName" <> "t1"."LastName" OR "t1"."MiddleName" IS NULL) IS NULL
	) AS smallint)
FROM SYSIBM.SYSDUMMY1

