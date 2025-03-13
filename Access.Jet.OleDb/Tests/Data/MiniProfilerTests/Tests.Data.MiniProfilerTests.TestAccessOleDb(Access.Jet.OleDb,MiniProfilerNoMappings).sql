BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = #2012-12-12 12:12:12#

SELECT ID FROM AllTypes WHERE datetimeDataType = @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p Date -- DateTime
SET     @p = #2012-12-12 12:12:12#

SELECT ID FROM AllTypes WHERE datetimeDataType = @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p LongVarChar(3) -- AnsiString
SET     @p = '567'

SELECT ID FROM AllTypes WHERE textDataType = @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @p LongVarWChar(3) -- String
SET     @p = '111'

SELECT ID FROM AllTypes WHERE ntextDataType = @p

