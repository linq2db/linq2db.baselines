BeforeExecute
-- SqlServer.2014

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	[t2].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [t1]
				INNER JOIN [AllTypes] [a_Association] ON [t1].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			1 = 0
	) [t2]

BeforeExecute
-- SqlServer.2014
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	[t2].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [t1]
				INNER JOIN [AllTypes] [a_Association] ON [t1].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[t1].[smallintDataType] = @ID
	) [t2]

