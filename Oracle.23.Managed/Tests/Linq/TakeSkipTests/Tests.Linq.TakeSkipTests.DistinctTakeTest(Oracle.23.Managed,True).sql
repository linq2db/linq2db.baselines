-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	t1."Value" as "Value_1"
FROM
	"TakeSkipClass" t1
FETCH NEXT :take ROWS ONLY

