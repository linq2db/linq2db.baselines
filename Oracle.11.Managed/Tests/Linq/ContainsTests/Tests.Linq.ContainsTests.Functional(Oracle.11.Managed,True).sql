-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2) AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" IN (-1) OR s."Int" IS NULL) AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2) AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (2) AND s."Int" IS NOT NULL) AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (-1, 2) OR s."Int" IS NULL) AND ROWNUM <= 1

