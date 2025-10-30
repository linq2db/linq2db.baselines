BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Value2",
	d."item"
FROM
	(
		SELECT DISTINCT
			t."Value2"
		FROM
			"SampleClass" t
	) m_1
		CROSS APPLY (
			SELECT m_1."Value2" AS "item" FROM sys.dual) d
WHERE
	d."item" IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Value2"
FROM
	"SampleClass" t
ORDER BY
	t."Id"

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Value3",
	d."item"
FROM
	(
		SELECT DISTINCT
			t."Value3"
		FROM
			"SampleClass" t
	) m_1
		CROSS APPLY (
			SELECT m_1."Value3" AS "item" FROM sys.dual) d
WHERE
	d."item" IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Value3"
FROM
	"SampleClass" t
ORDER BY
	t."Id"

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Value3",
	m_1."Value1",
	m_1."Value2",
	d."item"
FROM
	(
		SELECT DISTINCT
			t."Value3",
			t."Value1",
			t."Value2"
		FROM
			"SampleClass" t
	) m_1
		CROSS APPLY (
			SELECT m_1."Value3" AS "item" FROM sys.dual
			UNION ALL
			SELECT m_1."Value1" FROM sys.dual
			UNION ALL
			SELECT m_1."Value2" FROM sys.dual) d
WHERE
	d."item" IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Value3",
	t."Value1",
	t."Value2"
FROM
	"SampleClass" t
ORDER BY
	t."Id"

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Value3",
	d."item"
FROM
	(
		SELECT DISTINCT
			t."Value3"
		FROM
			"SampleClass" t
	) m_1
		CROSS APPLY (
			SELECT m_1."Value3" AS "item" FROM sys.dual
			UNION ALL
			SELECT m_1."Value3" FROM sys.dual) d
WHERE
	d."item" IS NOT NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."Value3"
FROM
	"SampleClass" t
ORDER BY
	t."Id"

