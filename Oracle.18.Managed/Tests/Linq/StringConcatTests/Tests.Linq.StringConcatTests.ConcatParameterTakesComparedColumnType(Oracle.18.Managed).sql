-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @suffix NVarchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	p."Title" = (p."Sku" || :suffix)

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

