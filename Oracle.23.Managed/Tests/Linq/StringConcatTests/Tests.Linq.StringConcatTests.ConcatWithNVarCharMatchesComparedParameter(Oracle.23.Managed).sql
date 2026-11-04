-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @key NVarchar2(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || p."Title") = :key

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

