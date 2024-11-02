BeforeExecute
-- SqlServer.2012

DROP TABLE [TestEnumTable]

BeforeExecute
-- SqlServer.2012

CREATE TABLE [TestEnumTable]
(
	[Field1]  Int         NOT NULL,
	[Field11] Int             NULL,
	[Field2]  NVarChar(2)     NULL,
	[Field21] Char(2)     NOT NULL,
	[Field3]  SmallInt    NOT NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [TestEnumTable]
(
	[Field1],
	[Field11],
	[Field2],
	[Field21],
	[Field3]
)
VALUES
(
	1,
	1,
	N'A',
	'A',
	0
)

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[Field1],
	[t1].[Field11],
	[t1].[Field2],
	[t1].[Field21],
	[t1].[Field3]
FROM
	[TestEnumTable] [t1]

BeforeExecute
-- SqlServer.2012

DROP TABLE [TestEnumTable]

