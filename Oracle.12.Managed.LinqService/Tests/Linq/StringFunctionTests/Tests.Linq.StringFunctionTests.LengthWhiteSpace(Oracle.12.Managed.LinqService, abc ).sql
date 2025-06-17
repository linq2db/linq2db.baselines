BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Str",
	Length(t."Str") as "Length_1"
FROM
	"TestLengthModel" t
FETCH NEXT 2 ROWS ONLY

