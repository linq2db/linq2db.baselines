BeforeExecute
-- SqlCe

DROP TABLE [ExprPerson]

BeforeExecute
-- SqlCe

CREATE TABLE [ExprPerson]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [ExprPerson]
(
	[Id],
	[Name]
)
SELECT 0,'Person0' UNION ALL
SELECT 1,'Person1' UNION ALL
SELECT 2,'Person2' UNION ALL
SELECT 3,'Person3' UNION ALL
SELECT 4,'Person4' UNION ALL
SELECT 5,'Person5' UNION ALL
SELECT 6,'Person6' UNION ALL
SELECT 7,'Person7' UNION ALL
SELECT 8,'Person8' UNION ALL
SELECT 9,'Person9' UNION ALL
SELECT 10,'Person10' UNION ALL
SELECT 11,'Person11' UNION ALL
SELECT 12,'Person12' UNION ALL
SELECT 13,'Person13' UNION ALL
SELECT 14,'Person14' UNION ALL
SELECT 15,'Person15' UNION ALL
SELECT 16,'Person16' UNION ALL
SELECT 17,'Person17' UNION ALL
SELECT 18,'Person18' UNION ALL
SELECT 19,'Person19'

BeforeExecute
-- SqlCe

DROP TABLE [ExprPerson]

