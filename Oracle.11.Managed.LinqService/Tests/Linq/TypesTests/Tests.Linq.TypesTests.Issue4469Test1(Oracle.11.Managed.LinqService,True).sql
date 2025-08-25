BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	v."Integer" / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"Issue4469Table" v
WHERE
	ROWNUM <= 2

