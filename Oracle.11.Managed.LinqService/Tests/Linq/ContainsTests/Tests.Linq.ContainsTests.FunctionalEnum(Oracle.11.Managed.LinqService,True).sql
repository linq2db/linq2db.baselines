BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'FOUR') AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" IN ('THREE') OR s."Enum" IS NULL) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'TWO') AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" NOT IN ('TWO') AND s."Enum" IS NOT NULL) AND
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" NOT IN ('THREE', 'TWO') OR s."Enum" IS NULL) AND
	ROWNUM <= 1

