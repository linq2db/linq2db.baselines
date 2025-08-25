﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'FOUR')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" IN ('THREE') OR "s"."Enum" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Enum" IN ('THREE', 'TWO')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('TWO') AND "s"."Enum" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	("s"."Enum" NOT IN ('THREE', 'TWO') OR "s"."Enum" IS NULL)
FETCH NEXT 1 ROWS ONLY

