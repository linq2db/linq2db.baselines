﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

BeforeExecute
DisposeTransaction
BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id"
FROM
	"MainEntity" x

