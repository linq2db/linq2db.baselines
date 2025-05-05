﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_2."Id1",
	d."DetailId",
	d."MasterId",
	d."DetailValue"
FROM
	(
		SELECT DISTINCT
			m_1."Id1"
		FROM
			"MasterClass" m_1
	) m_2
		INNER JOIN "DetailClass" d ON m_2."Id1" = d."MasterId"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1
DECLARE @p_1 Int32
SET     @p_1 = 2

SELECT
	m_2."Id1",
	d_1."DetailId",
	d_1."MasterId",
	d_1."DetailValue"
FROM
	(
		SELECT DISTINCT
			m_1."Id1"
		FROM
			"MasterClass" m_1
	) m_2
		CROSS APPLY (
			SELECT
				d."DetailId",
				d."MasterId",
				d."DetailValue"
			FROM
				"DetailClass" d
			WHERE
				m_2."Id1" = d."MasterId"
			ORDER BY
				d."DetailId"
			OFFSET :p ROWS FETCH NEXT :p_1 ROWS ONLY 
		) d_1

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id1",
	m_1."Id2",
	m_1."Value",
	m_1."ByteValues"
FROM
	"MasterClass" m_1

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id1",
	d."DetailId",
	d."MasterId",
	d."DetailValue"
FROM
	(
		SELECT DISTINCT
			t1."Id1"
		FROM
			"MasterClass" t1
	) m_1
		INNER JOIN "DetailClass" d ON m_1."Id1" = d."MasterId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id1",
	t1."Id2",
	t1."Value",
	t1."ByteValues"
FROM
	"MasterClass" t1

