-- Oracle.11.Managed Oracle11
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || :suffix) IN ('A-100Щит', 'B-200Жук')

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

