﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (2)

BeforeExecute
--  Informix.DB2 Informix

SELECT
	x.ParentID,
	x.ChildID,
	x.GrandChildID
FROM
	GrandChild x
WHERE
	x.ParentID IN (3)

