﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3631Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3631Table]
(
	[Country] NVarChar(2) NOT NULL,
	[State]   NVarChar(2) NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'AL'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'AZ'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'CA'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'FL'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'IN'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'OH'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'US'
DECLARE @State VarWChar(2) -- String
SET     @State = 'NY'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarWChar(2) -- String
SET     @State = 'AB'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Country VarWChar(2) -- String
SET     @Country = 'CA'
DECLARE @State VarWChar(2) -- String
SET     @State = 'ON'

INSERT INTO [Issue3631Table]
(
	[Country],
	[State]
)
VALUES
(
	@Country,
	@State
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[x].[Country],
	[x].[State]
FROM
	[Issue3631Table] [x]
WHERE
	[x].[Country] = 'US' AND [x].[State] = 'CA' OR [x].[Country] = 'US' AND [x].[State] = 'NY'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3631Table]

