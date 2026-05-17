-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG(t1."Value", '') WITHIN GROUP (ORDER BY t1.PK)
FROM
	"ConcatGroupedEntity" t1

