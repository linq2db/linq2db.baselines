-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @arr Int32
SET     @arr = 1

SELECT
	t."Id",
	t."Value" as "Value_1"
FROM
	"ArrayLengthTable" t
WHERE
	t."Id" = :arr
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @arr Int32
SET     @arr = 2

SELECT
	t."Id",
	t."Value" as "Value_1"
FROM
	"ArrayLengthTable" t
WHERE
	t."Id" = :arr
FETCH NEXT 2 ROWS ONLY

