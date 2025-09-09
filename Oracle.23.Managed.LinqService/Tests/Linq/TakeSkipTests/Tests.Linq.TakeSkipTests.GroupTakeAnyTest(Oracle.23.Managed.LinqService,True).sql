BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				item_1."Value"
			FROM
				"TakeSkipClass" item_1
			GROUP BY
				item_1."Value"
			HAVING
				COUNT(*) > 1
			FETCH NEXT :take ROWS ONLY
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

