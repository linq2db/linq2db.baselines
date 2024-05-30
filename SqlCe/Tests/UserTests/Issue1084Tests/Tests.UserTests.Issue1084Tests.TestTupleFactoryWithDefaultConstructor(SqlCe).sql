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

SELECT
	[t1].[StatusBitmask] & 128 as [c1],
	[g_1].[StatusBitmask] & 128 as [c2]
FROM
	[i1084_person] [t1]
		LEFT JOIN [i1084_student] [g_1] ON [t1].[Id] = [g_1].[Id] AND CAST([t1].[Number] AS NVarChar(11)) = [g_1].[Number]

BeforeExecute
-- SqlCe

DROP TABLE [i1084_student]

BeforeExecute
-- SqlCe

DROP TABLE [i1084_person]

