BeforeExecute
-- Informix.DB2 Informix
DECLARE @user_1 Integer(4) -- Int32
SET     @user_1 = 3

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @user_1

