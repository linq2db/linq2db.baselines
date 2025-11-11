-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value3,
	t1.Value4
FROM
	SampleClass t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

SELECT
	Nvl(t.Value2, '')
FROM
	SampleClass t
ORDER BY
	t.Id

-- Informix.DB2 Informix

SELECT
	Nvl(t.Value3, '')
FROM
	SampleClass t
ORDER BY
	t.Id

-- Informix.DB2 Informix

SELECT
	Nvl(SUBSTRING(Nvl(' -> ' || t.Value3, '') || Nvl(' -> ' || t.Value1, '') || Nvl(' -> ' || t.Value2, '') FROM 5), '')
FROM
	SampleClass t
ORDER BY
	t.Id

-- Informix.DB2 Informix

SELECT
	Nvl(SUBSTRING(Nvl(' -> ' || t.Value3, '') || Nvl(' -> ' || t.Value3, '') FROM 5), '')
FROM
	SampleClass t
ORDER BY
	t.Id

