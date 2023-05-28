BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NULL)
	CREATE TABLE [testparams]
	(
		[col2]    Int NOT NULL,
		[col3]    Int NOT NULL,
		[Column1] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @test Int -- Int32
SET     @test = 0
DECLARE @TEST_1 Int -- Int32
SET     @TEST_1 = 0
DECLARE @Component_Column1 Int -- Int32
SET     @Component_Column1 = 1

INSERT INTO [testparams]
(
	[col2],
	[col3],
	[Column1]
)
VALUES
(
	@test,
	@TEST_1,
	@Component_Column1
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @test Int -- Int32
SET     @test = 2
DECLARE @TEST_1 Int -- Int32
SET     @TEST_1 = 3

UPDATE
	[t]
SET
	[t].[col2] = @test,
	[t].[col3] = @TEST_1
FROM
	[testparams] [t]
WHERE
	[t].[Column1] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @TEST Int -- Int32
SET     @TEST = 2
DECLARE @test_1 Int -- Int32
SET     @test_1 = 3

UPDATE
	[t]
SET
	[t].[col3] = @TEST,
	[t].[col2] = @test_1
FROM
	[testparams] [t]
WHERE
	[t].[Column1] = 1

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[testparams]', N'U') IS NOT NULL)
	DROP TABLE [testparams]

