﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @skip_1 Int32
SET     @skip_1 = 1
DECLARE @skip_2 Int32
SET     @skip_2 = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t3."Value_1"
FROM
	(
		SELECT
			t2."Value_1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1."Value" as "Value_1"
				FROM
					"TakeSkipClass" t1
				ORDER BY
					t1."Value"
			) t2
		WHERE
			ROWNUM <= (:skip + :skip_1 + :skip_2 + :take - :skip_2)
	) t3
WHERE
	t3.RN > :skip + :skip_1 + :skip_2
ORDER BY
	t3."Value_1"

