﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	p.ParentID
FROM
	Parent p
		INNER JOIN Child a_Children ON p.ParentID = a_Children.ParentID

