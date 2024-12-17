BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[Field1] Int  NOT NULL IDENTITY,
		[Field2] Int  NOT NULL,

		CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([Field1])
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Table2]', N'U') IS NULL)
	CREATE TABLE [Table2]
	(
		[Field2] Int  NOT NULL IDENTITY,

		CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([Field2])
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Field2]
FROM
	[Table2] [t1]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Table1] [x]
		WHERE
			[t1].[Field2] = [x].[Field2] AND CAST([x].[Field1] AS BigInt) IN (1, 2, 3)
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Table1]

