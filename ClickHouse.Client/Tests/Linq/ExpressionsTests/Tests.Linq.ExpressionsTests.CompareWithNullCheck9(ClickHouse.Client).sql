﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 5 AND (p.Value1 <> COALESCE(CASE WHEN 'not5' IS NULL THEN NULL ELSE CAST('6' AS INT) END, CASE WHEN 'not5' IS NULL THEN NULL ELSE CAST('6' AS INT) END) OR p.Value1 IS NULL AND COALESCE(CASE WHEN 'not5' IS NULL THEN NULL ELSE CAST('6' AS INT) END, CASE WHEN 'not5' IS NULL THEN NULL ELSE CAST('6' AS INT) END) IS NOT NULL OR p.Value1 IS NOT NULL AND COALESCE(CASE WHEN 'not5' IS NULL THEN NULL ELSE CAST('6' AS INT) END, CASE WHEN 'not5' IS NULL THEN NULL ELSE CAST('6' AS INT) END) IS NULL)
	)

