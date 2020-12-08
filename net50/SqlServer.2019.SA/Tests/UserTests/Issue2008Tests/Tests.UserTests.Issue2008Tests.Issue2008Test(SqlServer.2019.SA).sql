BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [Table1]
(
	[Id_1]        Int NOT NULL,
	[Description] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [Table2]
(
	[Id_2]        Int NOT NULL,
	[Description] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [Table3]
(
	[Id_3]        Int NOT NULL,
	[Description] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[rTable1].[Id_1],
	[rTable1].[Description],
	[t1].[Id_2],
	[t1].[Description]
FROM
	[Table1] [rTable1]
		OUTER APPLY (
			SELECT
				[r2].[Id_2],
				[r2].[Description]
			FROM
				[Table2] [r2]
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						[Table3] [r3]
					WHERE
						[r3].[Id_3] = [rTable1].[Id_1]
				) AND
				[r2].[Id_2] = [rTable1].[Id_1]
		) [t1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [Table1]

