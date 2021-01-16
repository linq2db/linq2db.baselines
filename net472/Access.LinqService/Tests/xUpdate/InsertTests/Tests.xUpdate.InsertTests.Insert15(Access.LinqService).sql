﻿BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert15%'

BeforeExecute
-- Access AccessOleDb
DECLARE @Gender WChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarWChar(8) -- String
SET     @Name_FirstName = 'Insert15'
DECLARE @Name_MiddleName VarWChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarWChar(8) -- String
SET     @Name_LastName = 'Insert15'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert15%'

