﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @user_1 Int32
SET     @user_1 = 3

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = :user_1

