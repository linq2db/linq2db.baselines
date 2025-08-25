BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	CAST(v."Integer" AS Float) / 33D,
	CAST(v."Decimal" AS Float) / 33D,
	v."Double" / 33D
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

