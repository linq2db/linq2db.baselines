BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DateOnlyTable') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DateOnlyTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DateOnlyTable]
		(
			[Date] Date NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Date Date
SET     @Date = '2021-01-01'

INSERT INTO [DateOnlyTable]
(
	[Date]
)
VALUES
(
	@Date
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DateOnlyTable') IS NOT NULL)
	DROP TABLE [DateOnlyTable]

