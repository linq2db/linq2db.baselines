﻿BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	Cast(CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = 1 AND NOT (x.ChildID = 11 AND x.GrandChildID = 777)
		))
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	Cast(CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = 1 AND NOT (x.GrandChildID = 777 AND x.ChildID = 11)
		))
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM SYSTABLES

