﻿Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX("p"."QuantityPerUnit")
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")) AND "p"."ProductName" LIKE 'U%'


--  SQLite.MS SQLite (asynchronously)

SELECT
	MAX([e].[QuantityPerUnit])
FROM
	[Products] [e]
WHERE
	([e].[IsDeleted] = 0 OR [e].[IsDeleted] = 0) AND [e].[ProductName] LIKE 'U%' ESCAPE '~'



--  SQLite.MS SQLite

DELETE FROM
	[Products]
WHERE
	([Products].[IsDeleted] = 0 OR [Products].[IsDeleted] = 0) AND
	[Products].[ProductName] = 'a'



