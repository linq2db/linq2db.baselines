BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p1 Bit -- Boolean
SET     @p1 = 0
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 3

SELECT 
	[p_1].[ID], 
	[p_1].[FirstName_1]
FROM
	( 
		SELECT 
			'123' + [p].[FirstName] + '012345' as [FirstName], 
			[p].[PersonID] as [ID], 
			[p].[FirstName] as [FirstName_1]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	) [p_1]
WHERE
	CASE
		WHEN @p1 = 1 THEN 5
		WHEN CharIndex('123', Substring([p_1].[FirstName], 6, Len([p_1].[FirstName]))) + 5 = 0
			THEN -1
		ELSE (Len([p_1].[FirstName]) - CharIndex('321', Reverse(Substring([p_1].[FirstName], 6, Len([p_1].[FirstName]) - 5)))) - @Length_1 + 1
	END = 8

