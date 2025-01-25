BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3472TableDCTX]', N'U') IS NOT NULL)
	DROP TABLE [Issue3472TableDCTX]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3472TableDCTX]', N'U') IS NULL)
	CREATE TABLE [Issue3472TableDCTX]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Issue3472TableDCTX]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDCTX] [t1]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue3472TableDCTX]', N'U') IS NOT NULL)
	DROP TABLE [Issue3472TableDCTX]

