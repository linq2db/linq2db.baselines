BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."Value_1"
FROM
	(
		SELECT DISTINCT
			t1."Value" as "Value_1"
		FROM
			"TakeSkipClass" t1
	) t2
WHERE
	ROWNUM <= :take

