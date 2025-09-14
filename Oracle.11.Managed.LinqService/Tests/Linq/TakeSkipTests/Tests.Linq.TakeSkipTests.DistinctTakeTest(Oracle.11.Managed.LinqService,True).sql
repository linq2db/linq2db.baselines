BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Value_1"
FROM
	(
		SELECT DISTINCT
			r."Value" as "Value_1"
		FROM
			"TakeSkipClass" r
	) t1
WHERE
	ROWNUM <= :take

