BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[col2]    Int NOT NULL,
	[col3]    Int NOT NULL,
	[Column1] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @test Integer -- Int32
SET     @test = 0
DECLARE @TEST_1 Integer -- Int32
SET     @TEST_1 = 0
DECLARE @Component_Column1 Integer -- Int32
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
-- Access AccessOleDb
DECLARE @test Integer -- Int32
SET     @test = 2
DECLARE @TEST_1 Integer -- Int32
SET     @TEST_1 = 3

UPDATE
	[testparams] [t]
SET
	[t].[col2] = @test,
	[t].[col3] = @TEST_1
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @TEST Integer -- Int32
SET     @TEST = 2
DECLARE @test_1 Integer -- Int32
SET     @test_1 = 3

UPDATE
	[testparams] [t]
SET
	[t].[col3] = @TEST,
	[t].[col2] = @test_1
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[t1].[col2],
	[t1].[col3],
	[t1].[Column1]
FROM
	[testparams] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

