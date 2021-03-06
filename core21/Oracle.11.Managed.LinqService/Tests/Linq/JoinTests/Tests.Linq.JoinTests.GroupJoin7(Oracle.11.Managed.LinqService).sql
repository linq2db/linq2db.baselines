﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @p1 Int32
SET     @p1 = 1

SELECT
	key_data_result.ParentID,
	gjd_c.ParentID,
	gjd_c.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = 1
	) key_data_result
		INNER JOIN Child gjd_c ON gjd_c.ParentID - :p1 = key_data_result.ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

