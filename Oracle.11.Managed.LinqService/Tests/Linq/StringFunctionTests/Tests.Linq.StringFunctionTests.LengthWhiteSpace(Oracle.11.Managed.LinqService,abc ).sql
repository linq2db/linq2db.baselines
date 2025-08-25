BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t."Str",
	Length(t."Str")
FROM
	"TestLengthModel" t
WHERE
	ROWNUM <= 2

