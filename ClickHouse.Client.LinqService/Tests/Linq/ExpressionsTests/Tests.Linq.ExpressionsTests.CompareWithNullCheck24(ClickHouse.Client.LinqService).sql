﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			AllTypes p
		WHERE
			p.ID = 2 AND (COALESCE(CASE WHEN p.varcharDataType IS NULL THEN NULL ELSE CAST('7777777' AS INT) END, CASE WHEN p.varcharDataType IS NULL THEN NULL ELSE CAST('7777777' AS INT) END) = p.intDataType OR COALESCE(CASE WHEN p.varcharDataType IS NULL THEN NULL ELSE CAST('7777777' AS INT) END, CASE WHEN p.varcharDataType IS NULL THEN NULL ELSE CAST('7777777' AS INT) END) IS NULL AND p.intDataType IS NULL)
	)

