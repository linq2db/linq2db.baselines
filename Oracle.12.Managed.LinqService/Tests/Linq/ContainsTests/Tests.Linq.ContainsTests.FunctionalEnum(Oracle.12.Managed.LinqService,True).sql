﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'FOUR')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" IN ('THREE') OR s."Enum" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'TWO')
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" NOT IN ('TWO') AND s."Enum" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" NOT IN ('THREE', 'TWO') OR s."Enum" IS NULL)
FETCH NEXT 1 ROWS ONLY

