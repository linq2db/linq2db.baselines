-- Oracle.11.Managed Oracle11
SELECT
	CAST(v."Integer" AS Float) / 33D,
	CAST(v."Decimal" AS Float) / 33D,
	v."Double" / 33D
FROM
	"NumericDivisionTable" v
WHERE
	ROWNUM <= 2

