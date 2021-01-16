BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_temp]', N'U') IS NULL)
	CREATE TABLE [test_temp]
	(
		[ID]     Int      NOT NULL IDENTITY,
		[Field1] Decimal  NOT NULL,

		CONSTRAINT [PK_test_temp] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

DELETE FROM [test_temp]

BeforeExecute
-- SqlServer.2005

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[test_temp]', N'U') IS NOT NULL)
	DROP TABLE [test_temp]

