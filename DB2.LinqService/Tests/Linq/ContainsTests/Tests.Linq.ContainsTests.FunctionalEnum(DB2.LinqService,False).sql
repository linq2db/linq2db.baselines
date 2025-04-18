﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'FOUR')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'TWO')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" NOT IN (NULL, 'TWO')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" NOT IN ('THREE', 'TWO')
FETCH NEXT 1 ROWS ONLY

