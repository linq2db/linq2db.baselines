-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Id",
	t1."Grp",
	t1."Value" as "Value_1"
FROM
	"NullsTable" t1
ORDER BY
	t1."Value" NULLS LAST,
	t1."Id"
FETCH NEXT :take ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Grp",
	t1."Value"
FROM
	"NullsTable" t1

