﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN :ParentID IN (
			SELECT
				p."ParentID"
			FROM
				"Parent" p
			WHERE
				p."ParentID" = 1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN :ParentID IN (
			SELECT
				p."ParentID"
			FROM
				"Parent" p
			WHERE
				p."ParentID" = 1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

