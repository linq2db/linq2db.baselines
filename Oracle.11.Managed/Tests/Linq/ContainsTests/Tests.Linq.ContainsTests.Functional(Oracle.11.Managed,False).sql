BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, NULL) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (NULL, 2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (-1, 2) AND ROWNUM <= 1

