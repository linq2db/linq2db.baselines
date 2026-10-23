-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Data UniVarChar(7) -- String
SET     @Data = 'Data 10'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 11
DECLARE @Data_1 UniVarChar(7) -- String
SET     @Data_1 = 'Data 11'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT @Id AS [Id], @Data AS [Data]
		UNION ALL
		SELECT @Id_1, @Data_1) [t1]

