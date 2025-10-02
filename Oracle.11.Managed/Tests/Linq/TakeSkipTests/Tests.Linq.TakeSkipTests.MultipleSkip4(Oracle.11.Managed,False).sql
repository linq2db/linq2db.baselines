﻿BeforeExecute
-- Oracle.11.Managed Oracle11

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
	) t3
WHERE
	t3.RN > 6
ORDER BY
	t3."Value_1"

