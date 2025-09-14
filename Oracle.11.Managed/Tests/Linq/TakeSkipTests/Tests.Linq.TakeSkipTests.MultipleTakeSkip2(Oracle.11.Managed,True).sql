BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2
DECLARE @skip_1 Int32
SET     @skip_1 = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t3."Id",
	t3."Value_1"
FROM
	(
		SELECT
			t2."Id",
			t2."Value_1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."Id",
					t1."Value" as "Value_1"
				FROM
					"TakeSkipClass" t1
				ORDER BY
					t1."Value"
			) t2
		WHERE
			ROWNUM <= (:skip + :skip_1 + :take)
	) t3
WHERE
	t3.RN > :skip + :skip_1
ORDER BY
	t3."Value_1"

