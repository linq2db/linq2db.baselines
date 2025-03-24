﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1.FK,
	a_ObjectBOptional."Id",
	a_ObjectBOptional.FK,
	a_ObjectCRequired."Id",
	a_ObjectCRequired.FK
FROM
	"EntityA" t1
		LEFT JOIN "EntityB" a_ObjectBOptional ON t1.FK = a_ObjectBOptional."Id"
		LEFT JOIN "EntityC" a_ObjectCRequired ON a_ObjectBOptional.FK = a_ObjectCRequired."Id"

