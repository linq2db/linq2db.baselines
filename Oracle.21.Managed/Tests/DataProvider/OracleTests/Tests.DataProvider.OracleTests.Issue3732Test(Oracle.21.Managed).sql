BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int32
SET     @:p1 = {1,2,3,4,5,6,7,8}
-- value above truncated for logging

INSERT INTO BULKCOPYTABLE (ID) VALUES (:p1)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 4

SELECT
	x.ID
FROM
	BULKCOPYTABLE x
WHERE
	x.ID <> :id

