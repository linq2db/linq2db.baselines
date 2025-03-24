﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @input NVarChar(6) -- String
SET     @input = '%test%'

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE @input ESCAPE '~'

BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @input NVarChar(6) -- String
SET     @input = '%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @input ESCAPE '~'

