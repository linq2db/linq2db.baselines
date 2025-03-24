﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	m_1."CategoryID",
	d."ProductID",
	d."ProductName",
	d."CategoryID",
	d."QuantityPerUnit"
FROM
	"Categories" m_1
		INNER JOIN "Products" d ON m_1."CategoryID" = d."CategoryID"

BeforeExecute
DisposeTransaction
BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	t1."CategoryID",
	t1."CategoryName",
	t1."Description"
FROM
	"Categories" t1

