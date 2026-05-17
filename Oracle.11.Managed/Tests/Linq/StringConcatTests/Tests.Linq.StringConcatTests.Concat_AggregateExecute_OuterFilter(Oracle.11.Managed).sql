-- Oracle.11.Managed Oracle11

SELECT
	LISTAGG(t1."Value", '') WITHIN GROUP (ORDER BY t1.PK)
FROM
	"ConcatGroupedEntity" t1

