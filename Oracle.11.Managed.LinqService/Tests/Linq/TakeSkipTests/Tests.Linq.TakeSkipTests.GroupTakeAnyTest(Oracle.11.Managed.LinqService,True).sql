﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				t1."Key_1"
			FROM
				(
					SELECT
						item_1."Value" as "Key_1"
					FROM
						"TakeSkipClass" item_1
					GROUP BY
						item_1."Value"
					HAVING
						COUNT(*) > 1
				) t1
			WHERE
				ROWNUM <= :take
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

