-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[QualifiedNameTable]
WHERE
	[QualifiedNameTable].[ID] = @ID

