BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	r."Value" as "Value_1"
FROM
	"TakeSkipClass" r
FETCH NEXT :take ROWS ONLY

