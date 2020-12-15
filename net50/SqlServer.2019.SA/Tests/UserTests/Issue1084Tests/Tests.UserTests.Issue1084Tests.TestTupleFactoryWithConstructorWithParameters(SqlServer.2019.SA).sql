BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [i1084_student]
(
	[Id]            Int            NOT NULL,
	[Number]        NVarChar(4000)     NULL,
	[StatusBitmask] Int            NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [i1084_student]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [i1084_person]

