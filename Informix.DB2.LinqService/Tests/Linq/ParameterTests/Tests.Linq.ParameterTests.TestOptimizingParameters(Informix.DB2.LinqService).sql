﻿BeforeExecute
--  Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.PersonID = @id OR t1.PersonID <= @id OR t1.PersonID = @id

