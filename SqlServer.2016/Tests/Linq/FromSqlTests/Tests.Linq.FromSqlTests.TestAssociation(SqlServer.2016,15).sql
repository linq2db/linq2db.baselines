BeforeExecute
-- SqlServer.2016
DECLARE @idFilter Int -- Int32
SET     @idFilter = 1

SELECT
	[t].[id],
	[a_AssociatedOne].[id],
	[a_AssociatedOne].[parent_id],
	[a_AssociatedOne].[value]
FROM
	[sample_class] [t]
		OUTER APPLY (
			SELECT * FROM sample_other_class where parent_id = [t].[id] and id >= @idFilter
		) [a_AssociatedOne]

