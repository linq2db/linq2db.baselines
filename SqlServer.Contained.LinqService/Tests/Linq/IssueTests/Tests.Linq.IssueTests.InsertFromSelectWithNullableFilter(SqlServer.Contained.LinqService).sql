BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @ID SmallInt -- Int16
SET     @ID = 0

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	[t1].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[_].[smallintDataType] = @ID
	) [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123,
	[t1].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[_].[smallintDataType] = @ID
	) [t1]

