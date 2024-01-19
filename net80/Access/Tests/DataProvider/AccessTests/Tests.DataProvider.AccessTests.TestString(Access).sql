BeforeExecute
-- Access AccessOleDb

SELECT CStr('12345')

BeforeExecute
-- Access AccessOleDb

SELECT NULL

BeforeExecute
-- Access AccessOleDb
DECLARE @p Char(3) -- AnsiStringFixedLength
SET     @p = '123'

SELECT @p & 1

BeforeExecute
-- Access AccessOleDb
DECLARE @p VarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p LongVarChar(3) -- AnsiString
SET     @p = '123'

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p WChar(3) -- StringFixedLength
SET     @p = '123'

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p LongVarWChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(3) -- String
SET     @p = '123'

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar -- String
SET     @p = NULL

SELECT @p

BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(1) -- String
SET     @p = '1'

SELECT @p

