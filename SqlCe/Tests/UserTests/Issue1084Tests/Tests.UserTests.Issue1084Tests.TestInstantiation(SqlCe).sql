BeforeExecute
-- SqlCe

DROP TABLE [i1084_person]

BeforeExecute
-- SqlCe

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
SELECT 1,1,0 UNION ALL
SELECT 2,2,0

BeforeExecute
-- SqlCe

DROP TABLE [i1084_student]

BeforeExecute
-- SqlCe

CREATE TABLE [i1084_student]
(
	[Id]            Int           NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] Int           NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
SELECT 1,'1',0 UNION ALL
SELECT 2,'2',0

BeforeExecute
-- SqlCe

SELECT
	[k_1].[Id],
	[k_1].[Number] as [Number_1],
	[k_1].[StatusBitmask],
	[k_1].[StatusBitmask] & 128 as [IsBlocked],
	[g_1].[StatusBitmask] & 128 as [IsBlockedStudent]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON [k_1].[Id] = [g_1].[Id] AND CAST([k_1].[Number] AS NVarChar(11)) = [g_1].[Number]

BeforeExecute
-- SqlCe

DROP TABLE [i1084_student]

BeforeExecute
-- SqlCe

DROP TABLE [i1084_person]

