﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123#456'
DECLARE @toTest NVarChar(5) -- String
SET     @toTest = '%[#]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123#456'
DECLARE @toTest NVarChar(5) -- String
SET     @toTest = '%[#]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? NOT LIKE ?

