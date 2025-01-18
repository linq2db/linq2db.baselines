BeforeExecute
-- SqlServer.2005
DECLARE @p_p Int -- Int32
SET     @p_p = 2

UPDATE
	[testparams]
SET
	[p_p] = @p_p
WHERE
	[testparams].[p_p] = 1

