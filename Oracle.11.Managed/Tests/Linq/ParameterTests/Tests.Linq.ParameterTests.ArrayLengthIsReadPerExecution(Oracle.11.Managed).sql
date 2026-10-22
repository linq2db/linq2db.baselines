-- Oracle.11.Managed Oracle11
DECLARE @arr Int32
SET     @arr = 1

SELECT
	t."Id",
	t."Value"
FROM
	"ArrayLengthTable" t
WHERE
	t."Id" = :arr AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @arr Int32
SET     @arr = 2

SELECT
	t."Id",
	t."Value"
FROM
	"ArrayLengthTable" t
WHERE
	t."Id" = :arr AND ROWNUM <= 2

