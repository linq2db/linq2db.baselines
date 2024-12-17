BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestIssue358Class

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestIssue358Class
(
	MyEnum  Int     NULL,
	MyEnum2 Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.MyEnum,
	p.MyEnum2
FROM
	TestIssue358Class p
WHERE
	p.MyEnum2 NOT IN (1)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestIssue358Class

