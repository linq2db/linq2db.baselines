BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t."Str",
	Length(t."Str") as "Length_1"
FROM
	"TestLengthModel" t
FETCH NEXT 2 ROWS ONLY

