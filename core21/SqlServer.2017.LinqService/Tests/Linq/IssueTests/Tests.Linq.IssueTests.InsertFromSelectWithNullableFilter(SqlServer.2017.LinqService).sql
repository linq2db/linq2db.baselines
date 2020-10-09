BeforeExecute
-- SqlServer.2017

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT 
	123, 
	[t1].[smallintDataType]
FROM
	( 
		SELECT DISTINCT 
			[c_1].[smallintDataType]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [c_1] ON [_].[smallintDataType] = [c_1].[intDataType]
		WHERE
			[_].[smallintDataType] IS NULL
	) [t1]

BeforeExecute
-- SqlServer.2017
DECLARE @p1 SmallInt -- Int16
SET     @p1 = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT 
	123, 
	[t1].[smallintDataType]
FROM
	( 
		SELECT DISTINCT 
			[c_1].[smallintDataType]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [c_1] ON [_].[smallintDataType] = [c_1].[intDataType]
		WHERE
			[_].[smallintDataType] = @p1
	) [t1]

