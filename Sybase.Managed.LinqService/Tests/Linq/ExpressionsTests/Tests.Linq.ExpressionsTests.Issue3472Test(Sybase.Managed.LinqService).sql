BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3472TableDCTX') IS NOT NULL)
	DROP TABLE [Issue3472TableDCTX]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3472TableDCTX') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3472TableDCTX]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3472TableDCTX') IS NOT NULL)
	DROP TABLE [Issue3472TableDCTX]

