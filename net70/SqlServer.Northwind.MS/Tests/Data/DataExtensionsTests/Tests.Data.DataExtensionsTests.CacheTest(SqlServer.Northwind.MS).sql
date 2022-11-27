BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

CREATE TABLE #t1(v1 int not null)

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

INSERT INTO #t1(v1) values (1)

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT v1 FROM #t1

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

ALTER TABLE #t1 ALTER COLUMN v1 INT NULL

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

INSERT INTO #t1(v1) VALUES (null)

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT v1 FROM #t1

