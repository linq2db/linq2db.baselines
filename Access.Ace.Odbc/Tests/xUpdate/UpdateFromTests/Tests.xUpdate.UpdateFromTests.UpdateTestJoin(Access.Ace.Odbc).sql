BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100

UPDATE
	[UpdatedEntities] [c_1]
		INNER JOIN [NewEntities] [t] ON ([t].[id] = [c_1].[id])
SET
	[c_1].[Value1] = ([c_1].[Value1] * [t].[Value1]) * ?,
	[c_1].[Value2] = ([c_1].[Value2] * [t].[Value2]) * ?,
	[c_1].[Value3] = ([c_1].[Value3] * [t].[Value3]) * ?
WHERE
	[t].[id] <> ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[v].[id],
	[v].[Value1],
	[v].[Value2],
	[v].[Value3]
FROM
	[UpdatedEntities] [v]

