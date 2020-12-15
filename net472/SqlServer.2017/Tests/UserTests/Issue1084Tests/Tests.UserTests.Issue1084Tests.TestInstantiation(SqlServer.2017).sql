BeforeExecute
-- SqlServer.2017

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(1,1,0),
(2,2,0)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [i1084_student]
(
	[Id]            Int            NOT NULL,
	[Number]        NVarChar(4000)     NULL,
	[StatusBitmask] Int            NOT NULL
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(1,N'1',0),
(2,N'2',0)

BeforeExecute
-- SqlServer.2017

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON ([k_1].[Id] = [joinedTable].[Id] AND (Convert(NVarChar(11), [k_1].[Number]) = [joinedTable].[Number] OR Convert(NVarChar(11), [k_1].[Number]) IS NULL AND [joinedTable].[Number] IS NULL))

BeforeExecute
-- SqlServer.2017

DROP TABLE [i1084_student]

BeforeExecute
-- SqlServer.2017

DROP TABLE [i1084_person]

