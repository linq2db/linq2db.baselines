-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(Coalesce(t1."Value", ''), '') WITHIN GROUP (ORDER BY t1.PK)
FROM
	"ConcatGroupedEntity" t1

