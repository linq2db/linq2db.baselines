BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.MyEnum,
	p.MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum <> 0 OR p.MyEnum IS NULL

