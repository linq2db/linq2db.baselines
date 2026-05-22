-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Data UniVarChar(6) -- String
SET     @Data = 'Data 0'
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 1
DECLARE @Data_1 UniVarChar(6) -- String
SET     @Data_1 = 'Data 1'
DECLARE @Id_2 Integer -- Int32
SET     @Id_2 = 2
DECLARE @Data_2 UniVarChar(6) -- String
SET     @Data_2 = 'Data 2'

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	(
		SELECT @Id AS [Id], @Data AS [Data]
		UNION ALL
		SELECT @Id_1, @Data_1
		UNION ALL
		SELECT @Id_2, @Data_2) [t1]

