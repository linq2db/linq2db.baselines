﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, -2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (NULL, 2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"s"."Id"
FROM
	"Src" "s"
WHERE
	"s"."Int" NOT IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

