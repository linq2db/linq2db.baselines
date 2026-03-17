-- Access.Jet.OleDb AccessOleDb

SELECT CStr('12345')

-- Access.Jet.OleDb AccessOleDb

SELECT NULL

-- Access.Jet.OleDb AccessOleDb
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT @p & 1

-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p LongVarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p WChar(3) -- StringFixedLength
SET     @p = '123'

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '123'

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p LongVarWChar(3) -- String
SET     @p = '123'

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '123'

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT @p

-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarWChar(1) -- String
SET     @p = '1'

SELECT @p

