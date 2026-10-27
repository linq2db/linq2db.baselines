-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @suffix Varchar2(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id",
	p."Sku" || :suffix,
	:suffix || p."Sku" || :suffix,
	p."Sku" || :suffix
FROM
	"ConcatProduct" p

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

