﻿BeginTransaction(RepeatableRead)


-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	m_1."Key_1",
	d."CfAllowValue",
	d."DateFrom"
FROM
	(
		SELECT
			p."AclNameId" as "Key_1"
		FROM
			"Issue4624Items" p
		GROUP BY
			p."AclNameId"
		LIMIT 1
	) m_1
		INNER JOIN "Issue4624Items" d ON m_1."Key_1" = d."AclNameId"
ORDER BY
	d."DateFrom"



-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	p."AclNameId"
FROM
	"Issue4624Items" p
GROUP BY
	p."AclNameId"
LIMIT 1



DisposeTransaction


