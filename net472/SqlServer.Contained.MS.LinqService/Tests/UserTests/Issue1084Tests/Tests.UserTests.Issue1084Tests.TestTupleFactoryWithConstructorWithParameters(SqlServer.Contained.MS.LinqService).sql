BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [i1084_student]
(
	[Id]            Int            NOT NULL,
	[Number]        NVarChar(4000)     NULL,
	[StatusBitmask] Int            NOT NULL
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [i1084_person]

