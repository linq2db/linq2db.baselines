﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	m_1."Id",
	d."Id",
	d."MainEntityId"
FROM
	"MainEntity" m_1
		INNER JOIN "SubEntity" d ON m_1."Id" = d."MainEntityId"

BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	x."Id"
FROM
	"MainEntity" x

