-- Informix.DB2 Informix
DECLARE @user Integer(4) -- Int32
SET     @user = 3

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @user

