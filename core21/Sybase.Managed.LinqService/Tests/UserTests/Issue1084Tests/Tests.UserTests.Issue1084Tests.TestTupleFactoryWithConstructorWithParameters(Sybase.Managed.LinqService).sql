BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [i1084_person]
(
	[Id]            Int NOT NULL,
	[Number]        Int NOT NULL,
	[StatusBitmask] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [i1084_student]
(
	[Id]            Int           NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] Int           NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [i1084_student]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [i1084_person]

