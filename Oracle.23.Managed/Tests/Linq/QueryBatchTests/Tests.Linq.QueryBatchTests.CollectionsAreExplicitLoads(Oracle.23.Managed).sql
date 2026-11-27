-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Id",
	t1."Value" as "Value_1",
	t1."GroupId",
	t1."Name"
FROM
	"BatchItem" t1
ORDER BY
	t1."Id"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"BatchItem" t1
	)
FROM SYS.DUAL

