BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234

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
			[_].[smallintDataType] = @ID
	) [t1]

