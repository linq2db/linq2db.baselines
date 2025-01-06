﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestBool]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestBool]
(
	[Id]    Int NOT NULL,
	[Value] Bit     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	False
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = NOT [t1].[Value]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

UPDATE
	[TestBool] [t1]
SET
	[t1].[Id] = 1,
	[t1].[Value] = False

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestBool]

