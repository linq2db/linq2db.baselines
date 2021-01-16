BeforeExecute
-- SQLite.Default SQLite.MS SQLite

DELETE FROM
	[Child]
WHERE
	[Child].[ParentID] >= 1000

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	*
FROM
	"Parent" t

