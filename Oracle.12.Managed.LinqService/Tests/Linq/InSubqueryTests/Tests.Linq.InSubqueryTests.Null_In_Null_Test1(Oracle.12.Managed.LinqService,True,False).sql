﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"test_in_1" t
WHERE
	t.ID IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			"test_in_2" p
		WHERE
			t.ID = p.ID
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_1" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_2" t1

